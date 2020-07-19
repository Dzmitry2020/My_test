<?php

namespace Controller;

use Core\Config;
use Model\TestModel;
use mysqli;
use View\View;

class TestsController extends AbstractTableController
{
    protected $tableName = "tests";
    protected $templateFolder = "tests";

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view, $link);
        $this->table = new TestModel(
            $this->tableName,
            $link
        );
    }

    public function actionShow(array $data)
    {
        parent::actionShow($data);
        $this->view->addData([
            'placeNamesList' => $this->table->getNames(),
            'taskStatusList' => $this->table->getStatus(),
            'table' => $this
                ->table
                ->getTask(
                    Config::PAGE_SIZE,
                    $data['get']['page'] ?? 1
                )
        ]);
    }

    public function actionShowEdit(array $data)
    {
        parent::actionShowEdit($data);
        $this->view->addData([
            'placeNamesList' => $this->table->getNames(),
            'taskStatusList' => $this->table->getStatus()
        ]);
    }
}