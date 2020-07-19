<?php

/** @var int $id
 * @var string $type
 * @var array $fields
 * @var array $comments
 * @var array $value
 * @var array  $classesNamesList
 */

use TexLab\Html\Html;

$form = Html::Form()
    ->setMethod('POST')
    ->setAction("?action=edit&type=$type")
    ->setClass('form');

foreach ($fields as $name => $field) {
    $form->addInnerText(Html::Label()
        ->setFor($name)
        ->setInnerText($comments[$name])
        ->html());
    if ($name == 'class_id') {

        $form->addInnerText(Html::Select()
            ->setName($name)
            ->setId($name)
            ->setSelectedValue($field)
            ->setData($classesNamesList)
            ->html());}
    else {
        $form->addInnerText(Html::Input()
            ->setName($name)
            ->setId($name)
            ->setValue($field)
            ->html());
    }
}

echo $form
    ->addInnerText(Html::Input()
        ->setType('hidden')
        ->setName('id')
        ->setValue($id)
        ->html())
    ->addInnerText(Html::Input()
        ->setType('submit')
        ->setValue('OK')
        ->html())
    ->html();




