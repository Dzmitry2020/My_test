<?php


namespace Model;

use TexLab\MyDB\DbEntity;

class QuestionsModel extends DbEntity
{
    public function getTests()
    {
        $res = [];
        foreach ($this->runSQL("SELECT `id`, `title` FROM `tests` ORDER BY `title`") as $row) {
            $res[$row['id']] = $row['title'];
        }
        return $res;
    }

    public function getQuestions($pageSize, $page)
    {
          return $this
            ->setSelect('*')
            ->setFrom('`questions`')
//            ->setOrderBy('test_id`')
            ->setPageSize($pageSize)
            ->getPage($page);
    }
}
