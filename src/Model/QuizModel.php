<?php


namespace Model;

use TexLab\MyDB\Runner;

class QuizModel extends Runner

{
    public function getStudents(): array
    {
        $res = [];
        foreach ($this->runSQL(<<<SQL
SELECT `students`.`id`, `classes`.`name` AS class, `fio` FROM `students`, `classes` 
WHERE `students`.`class_id`=`classes`.`id` 
ORDER BY `class` DESC, `fio` ASC
SQL
        ) as $row) {
            $res[$row['id']] = $row['class'] . '. ' . $row['fio'];
        }
        return $res;
    }

    public function getTopics(): array
    {
        $res = [];
        foreach ($this->runSQL('SELECT `id`, `title` FROM `tests` WHERE `status`=1') as $row) {
            $res[$row['id']] = $row['title'];
        }
        return $res;
    }
}