<?php

namespace Model;

use TexLab\MyDB\DbEntity;

class GradesModel extends DbEntity
{

    public function getGrades($pageSize, $page)
    {
          return $this
            ->setSelect('*')
            ->setFrom('`grades`')
            ->setOrderBy('`grades`.`grade` DESC')
            ->setPageSize($pageSize)
            ->getPage($page);
    }
}
