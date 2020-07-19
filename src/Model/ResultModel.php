<?php

namespace Model;

use TexLab\MyDB\DbEntity;

class ResultModel extends DbEntity
{

    public function getResults($pageSize, $page)
    {
        return $this
            ->setSelect("`B`.`fio`, `classes`.`name`, `B`.`title`, `B`.`duration`, `B`.`result`")
            ->setFrom("(SELECT `A`.`fio`, `tests`.`title`, `A`.`duration`, `A`.`result`, `A`.class_id
FROM (SELECT `results`.`id`, `results`.`test_id`, `results`.`student_id`, `results`.`duration`,`results`.`result`, `students`.`fio`, `students`.`class_id`
FROM `results`, `students` WHERE `results`.`student_id` = `students`.`id`) AS `A`, `tests`
WHERE `A`.`test_id` = `tests`.`id`) AS `B`, `classes`")
            ->setWhere("`B`.`class_id` = `classes`.`id`")
            ->setOrderBy("`B`.`title`, `B`.`result`")
            ->setPageSize(10)
            ->getPage($page);
    }
}
