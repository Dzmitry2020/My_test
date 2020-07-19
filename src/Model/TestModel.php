<?php


namespace Model;

use TexLab\MyDB\DbEntity;

class TestModel extends DbEntity

{
    public function getStatus()
    {
        $res = [];
        foreach ($this->runSQL('SELECT `id`, `name` FROM teststate') as $row) {
            $res[$row['id']] = $row['name'];
        }
        return $res;
    }

    public function getTest($pageSize, $page)
    {
        return $this
            ->setSelect('*')
            ->setFrom('tests')
            ->setOrderBy('tests.status, tests.title')
            ->setPageSize($pageSize)
            ->getPage($page);
    }

}