<?php

namespace Controller;

use Core\Config;
use Model\GradesModel;
use mysqli;
use View\View;

class GradesController extends AbstractTableController
{
    protected $tableName = "grades";
    protected $templateFolder = "grades";

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view, $link);
        $this->table = new GradesModel(
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
                ->getGrades(
                    Config::PAGE_SIZE,
                    $data['get']['page'] ?? 1
                )
        ]);
    }
}