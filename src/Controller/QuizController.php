<?php

namespace Controller;

use Core\Config;
use Model\QuizModel;
use mysqli;
use View\View;

class QuizController extends AbstractController
{
    private QuizModel $table;

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view);
        $this->table = new QuizModel($link);

        if (empty($_SESSION['student'])) {
            $_SESSION['student'] = $_POST['student'];
        }
        if (empty($_SESSION['topicId'])) {
            $_SESSION['topicId'] = $_POST['topicId'];
        }
        if (empty($_SESSION['topic'])) {
            $_SESSION['topic'] = $this->table->getTopic($_SESSION['topicId']);
        }
        if (empty($_SESSION['qNumber'])) {
            $_SESSION['qNumber'] = 0;
        }
        if (empty($_SESSION['questions'])) {
            $_SESSION['questions'] = $this->table->getQuestions($_SESSION['topicId']);
        }
        if (empty($_SESSION['start'])) {
            $_SESSION['start'] = 0;
        }
        if (empty($_SESSION['timestart'])) {
            $_SESSION['timestart'] = time();
        }
        if (empty($_SESSION['timefinish'])) {
            $_SESSION['timefinish'] = date('Y-m-d H:i:s', time() + 60);
        }
    }

    public function actionShow()
    {
        if ($_SESSION['qNumber'] > Config::QUESTIONS_COUNT) {
            if (empty($_SESSION['qNumber'])) {
                $_SESSION['qNumber'] = 0;
                $_SESSION['start'] = 1;
            }
        } elseif (($_SESSION['qNumber'] == 0) and ($_SESSION['start'] == 1)) {
            $_SESSION['student'] = $_POST['student'];
            $_SESSION['topicId'] = $_POST['topicId'];
            $_SESSION['topic'] = $this->table->getTopic($_SESSION['topicId']);
            $_SESSION['questions'] = $this->table->getQuestions($_SESSION['topicId']);
            $_SESSION['questions'][$_SESSION['qNumber']]['answer'] = '';
            $_SESSION['timestart'] = time();
            $_SESSION['timefinish'] = date('Y-m-d H:i:s', $_SESSION['timestart'] + 60);
            $_SESSION['start'] = 0;
        }
        $this
            ->view
            ->setFolder('quiz')
            ->setTemplate('quizform')
            ->setLayout("quizLayout")
            ->addData([
                'action' => '?action=step&type=quiz',
            ]);
    }

    public function actionStep()
    {
        $_SESSION['questions'][$_SESSION['qNumber']]['answer'] = $_POST['answer'];
        if (isset($_POST['next'])) {
            if (($_SESSION['qNumber'] + 1) < Config::QUESTIONS_COUNT) {
                $_SESSION['qNumber']++;
                $this->actionShow();
            }
        } elseif (isset($_POST['back'])) {
            if ($_SESSION['qNumber'] > 0) {
                $_SESSION['qNumber']--;
                $this->actionShow();
            }
        } elseif (isset($_POST['result'])) {
            $this->actionResult();
        }
    }

    public function actionResult()
    {
        $res = [];
        $answer_right = 0;
        foreach ($_SESSION['questions'] as $qqq) {
            $res[] = ($qqq['answer'] == $qqq['ans_right']);
            if ($qqq['answer'] == $qqq['ans_right']) {
                $answer_right++;
            }
        }
        $_SESSION['right'] = $answer_right;
        $_SESSION['quizresult'] = ceil($answer_right * 10000 / Config::QUESTIONS_COUNT) / 100;
        date_default_timezone_set(Config::TIME_ZONE);
        $duration = time() - $_SESSION['timestart'] - 3*3600;
        $_SESSION['duration'] =  date('H:i:s', $duration);
        $this->table->addResult();
        $this
            ->view
            ->setFolder('quiz')
            ->setTemplate('resultform')
            ->setLayout("resultLayout")
            ->addData([
                'action' => '?action=defaultform&type=default',
            ]);
    }
}
