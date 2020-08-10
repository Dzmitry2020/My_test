<?php

namespace Controller;

use Model\DefaultModel;
use mysqli;
use View\View;

class QuizController extends AbstractController
{
    private QuizModel $table;

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view);
        $this->table = new QuizModel($link);
    }

    public function actionShow()
    {
        $this
            ->view
            ->setFolder('quiz')
            ->setTemplate('quizform')
            ->setLayout("quizLayout");
    }
}
