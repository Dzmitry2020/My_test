<?php

namespace Controller;

use Model\DefaultModel;
use mysqli;
use View\View;

class DefaultController extends AbstractController
{
    private DefaultModel $table;

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view);
        $this->table = new DefaultModel($link);
    }

    public function actionDefaultForm()
    {
        $this
            ->view
            ->setFolder('default')
            ->setTemplate('defaultform')
            ->setLayout("plainLayout")
            ->setData(['action' => '?action=show&type=quiz'])
            ->addData([
                'studentsList' => $this->table->getStudents(),
                'topicsList' => $this->table->getTopics()
            ]);
    }

    public function actionDefault($controllerData)
    {
        $this
            ->view
            ->setFolder('default')
            ->setTemplate('default');
    }

    public function actionQuiz()
    {
        $this
            ->view
            ->setFolder('quiz')
            ->setTemplate('quizform')
            ->setLayout("quizLayout");
    }
}
