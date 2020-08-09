<?php

use TexLab\Html\Html;

/**
 * @var string $type Имя контроллера
 * @var string $action
 */

$form = Html::Form()
    ->setMethod('POST')
    ->setAction($action);

$form->addInnerText(Html::Label()
    ->setInnerText("Имя:")
    ->html());

$form->addInnerText(Html::Input()
    ->setName("login")
    ->setId("login")
    ->html());

$form->addInnerText(Html::Label()
    ->setInnerText("Пароль:")
    ->html());

$form->addInnerText(Html::Input()
    ->setType('password')
    ->setName("pass")
    ->setId("pass")
    ->html());

$form->addInnerText(
    Html::Input()
        ->setType('submit')
        ->setClass('btn btn-primary')
        ->setValue('Войти')
        ->html()
);

echo $form->html();
