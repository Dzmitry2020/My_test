<?php

namespace Controller;

use Core\Config;
use Model\ResultModel;
use mysqli;
use View\View;

class ResultsController extends AbstractTableController
{
    protected $tableName = 'results';
    protected $templateFolder = 'results';

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view, $link);
        $this->table = new ResultModel(
            $this->tableName,
            $link
        );
    }

    public function actionShow(array $data)
    {
        parent::actionShow($data);
        $this->view->addData([
            'table' => $this
                ->table
                ->getResults(
                    Config::PAGE_SIZE,
                    $data['get']['page'] ?? 1
                )
        ]);
    }
}