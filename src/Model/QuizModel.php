<?php


namespace Model;

use Core\Config;
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

    public function getTopic($topicId): string
    {
        $res = $this->runSQL('SELECT `title` FROM `tests` WHERE `id`=' . $topicId);
        return $res[0]['title'];
    }

    public function getTopicDuration($topicId): int
    {
        $res = $this->runSQL('SELECT `duration` FROM `tests` WHERE `id`=' . $topicId);
        return $res[0]['duration'];
    }

    public function getQuestions($topicId): array
    {
        $arr = $this->runSQL(<<<'TAG'
SELECT `id`, `content`, `answer1`, `answer2`, `answer3`, `answer4`,  `ans_right` FROM `questions` WHERE `test_id`=
TAG
 . $topicId);

        $j = 0;
        while ($j < (count($arr) - Config::QUESTIONS_COUNT)):
            $i = mt_rand(0, count($arr)-1);
            if (!empty($arr[$i]['id'])) {
                $arr[$i]['id'] = '';
                $j = $j + 1;
            }
        endwhile;

        foreach ($arr as $k => $v)
            if (empty($v['id'])) unset($arr[$k]);

        $res = [];
        foreach ($arr as $item){
            $res[] = $item;
        }

        return $res;
    }

    public function addResult(){
        $arr = [];
        $arr['student_id'] = $_SESSION['student'];
        $arr['test_id'] = $_SESSION['topicId'];
        $arr['duration'] = $_SESSION['duration'];
        $arr['result'] = $_SESSION['quizresult'];

        $this->runSQL(
            "INSERT INTO `results` (". implode(', ', array_keys($arr)) .
            ") VALUES ('" . implode("', '", $arr) . "');");
    }

}