<?php


namespace Controller;

use Core\Config;
use Model\QuestionsModel;
use mysqli;
use View\View;

class QuestionsController extends AbstractTableController
{
    protected $tableName = "questions";
    protected $templateFolder = "questions";
    private $answerVariant = ['A', 'B', 'C', 'D'];

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view, $link);
        $this->table = new QuestionsModel(
            $this->tableName,
            $link
        );
    }

    public function actionShow(array $data)
    {
        parent::actionShow($data);
        $this->view->addData([
            'testsTitleList' => $this->table->getTests(),
            'answerVariant' => $this->answerVariant,
            'table' => $this
                ->table
                ->getQuestions(
                    Config::PAGE_SIZE,
                    $data['get']['page'] ?? 1
                )
        ]);
    }

    public function actionShowEdit(array $data)
    {
        parent::actionShowEdit($data);
        $this->view->addData([
            'testsTitleList' => $this->table->getTests(),
            'answerVariant' => $this->answerVariant
        ]);
    }
}