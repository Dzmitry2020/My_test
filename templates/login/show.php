<?php

use TexLab\Html\Html;

/**
 * @var string $type Имя контроллера
 */

$form = Html::Form()
    ->setMethod('POST')
    ->setAction("?action=add&type=$type")
    ->setClass('form');

$form->addInnerText(Html::Label()
    ->setInnerText("Имя:")
    ->html());

$form->addInnerText(Html::Input()
    ->setName("name")
    ->setId("name")
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
        ->setValue('Войти')
        ->html()
);

echo $form->html();
