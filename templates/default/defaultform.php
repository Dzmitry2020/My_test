<?php

use TexLab\Html\Html;

/**
 * @var string $type Имя контроллера
 * @var string $action
 * @var array $classroomsList Список классов
 * @var array $studentsList Список учеников
 * @var array $topicsList Список тем тестов
 */

$form = Html::Form()
    ->setMethod('POST')
    ->setAction($action)
    ->setClass('form');

$form->addInnerText(Html::Label()
    ->setInnerText("Class and name:")
    ->html());

$form->addInnerText(Html::Select()
    ->setName('student')
    ->setId('student')
    ->setData($studentsList)
    ->html());

$form->addInnerText(Html::Label()
    ->setInnerText("Topic:")
    ->html());

$form->addInnerText(Html::Select()
    ->setName('topic')
    ->setId('topic')
    ->setData($topicsList)
    ->html());

$form->addInnerText(
    Html::Input()
        ->setType('submit')
        ->setClass('btn btn-primary')
        ->setValue('Start')
        ->html()
);

$form->addInnerText(
    Html::A()
        ->setHref("/")
        ->addInnerText('Login'
//            Html::Input()
//                ->setType('button')
//                ->setClass('btn btn-secondary')
//                ->setValue('Login')
//                ->html()
        )
        ->html()
);

echo $form->html();
