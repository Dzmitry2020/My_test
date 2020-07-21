<?php

session_start();

/** @var int $id
 * @var string $type
 * @var array $fields
 * @var array $comments
 * @var array $testsTitleList
 * @var array $answerVariant
 */

use TexLab\Html\Html;


$form = Html::Form()
    ->setMethod('POST')
    ->setAction("?action=edit&type=$type")
    ->setClass('form');

foreach ($fields as $field => $value) {

    $form->addInnerText(Html::Label()
        ->setFor($field)
        ->setInnerText($comments[$field])
        ->html());

    if ($field == 'test_id') {
        $form->addInnerText(Html::Select()
            ->setName($field)
            ->setId($field)
            ->setClass('test-title-list')
            ->setSelectedValue($value)
            ->setData($testsTitleList)
            ->html());
    } elseif ($field == 'content') {
        $form->addInnerText(Html::Textarea()
            ->setClass('question')
            ->setName($field)
            ->setId($field)
            ->setInnerText($value)
            ->html());
    } elseif ($field == 'ans_right') {

        $form->addInnerText(Html::Select()
            ->setName($field)
            ->setId($field)
            ->setSelectedValue($value)
            ->setData($answerVariant)
            ->html());
    } else {
        $form->addInnerText(Html::Input()
            ->setClass('answer')
            ->setName($field)
            ->setId($field)
            ->setValue($value)
            ->html());
    }
}

echo $form->addInnerText(Html::Input()
    ->setType('hidden')
    ->setName('id')
    ->setValue($id)
    ->html())
    ->addInnerText(Html::Input()
        ->setType('submit')
        ->setValue('OK')
        ->html())
    ->html();
