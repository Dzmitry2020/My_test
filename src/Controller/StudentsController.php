<?php

namespace Controller;

use Core\Config;
use Model\StudentModel;
use mysqli;
use View\View;

class StudentsController extends AbstractTableController
{
    protected $tableName = "students";
    protected $templateFolder = "students";

    public function __construct(View $view, mysqli $link)
    {
        parent::__construct($view, $link);
        $this->table = new StudentModel(
            $this->tableName,
            $link
        );
    }

    public function actionShow(array $data)
    {
        parent::actionShow($data);
        $this->view->addData([
            'classesNamesList' => $this->table->getClasses(),
            'table' => $this
                ->table
                ->getStudent(
                    Config::PAGE_SIZE,
                    $data['get']['page'] ?? 1
                )
        ]);
    }

    public function actionShowEdit(array $data)
    {
        parent::actionShowEdit($data);
        $this->view->addData([
            'classesNamesList' => $this->table->getClasses()
        ]);
    }

}