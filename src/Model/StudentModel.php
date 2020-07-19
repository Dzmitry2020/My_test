<?php


namespace Model;

use TexLab\MyDB\DbEntity;

class StudentModel extends DbEntity
{
    public function getClasses()
    {
        $res = [];
        foreach ($this->runSQL("SELECT `id`, `name` FROM `classes` ORDER BY `id`") as $row) {
            $res[$row['id']] = $row['name'];
        }
        return $res;
    }

    public function getStudent($pageSize, $page)
    {
        return $this
            ->setSelect('students.id, classes.name, students.fio')
            ->setFrom('students, classes')
            ->setWhere('students.class_id = classes.id')
            ->setOrderBy('classes.id')
            ->setPageSize($pageSize)
            ->getPage($page);
    }
}