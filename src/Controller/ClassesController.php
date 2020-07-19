<?php


namespace Controller;

use Core\Config;
use Model\ClassesModel;
use mysqli;
use View\View;

class ClassesController extends AbstractTableController
{
    protected $tableName = "classes";
    protected $templateFolder = "classes";

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view, $link);
        $this->table = new ClassesModel(
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
                ->getClass(
                    Config::PAGE_SIZE,
                    $data['get']['page'] ?? 1
                )
        ]);
    }
}