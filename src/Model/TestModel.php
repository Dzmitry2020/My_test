<?php


namespace Model;

use TexLab\MyDB\DbEntity;

class TestModel extends DbEntity

{
    public function getStatus(): array
    {
        $res = [];
        foreach ($this->runSQL('SELECT `id`, `name` FROM teststate') as $row) {
            $res[$row['id']] = $row['name'];
        }
        return $res;
    }

    /**
     * @param int $topicNumber
     * @return int
     */
    public function getQuestionsQuantity(int $topicNumber): int
    {
        return count($this->runSQL('SELECT * FROM `questions` WHERE `test_id`='.$topicNumber));
    }

    public function getTest($pageSize, $page): array
    {   $arr = $this
            ->setSelect('*')
            ->setFrom('tests')
            ->setOrderBy('status, id')
            ->setPageSize($pageSize)
            ->getPage($page);
        $res = $arr;
        foreach ($arr as $key => $row){
            $res[$key]['questionsQuantity'] = $this->getQuestionsQuantity($row['id']);
        }
        return $res;
    }



}