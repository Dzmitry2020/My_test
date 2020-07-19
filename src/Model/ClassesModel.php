<?php


namespace Model;

use TexLab\MyDB\DbEntity;

class ClassesModel extends DbEntity
{

    public function getClass($pageSize, $page)
    {
          return $this
            ->setSelect('*')
            ->setFrom('`classes`')
            ->setOrderBy('`classes`.`id` ASC')
            ->setPageSize($pageSize)
            ->getPage($page);
    }
}
