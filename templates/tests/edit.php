<?php


/** @var int $id
 * @var string $type
 * @var array $fields
 * @var array $comments
 * @var array $statusList
 */

use TexLab\Html\Html;

$form = Html::Form()
    ->setMethod('POST')
    ->setAction("?action=edit&type=$type")
    ->setClass('form');

foreach ($fields as $name => $value) {
    $form->addInnerText(Html::Label()
        ->setFor($name)
        ->setInnerText($comments[$name])
        ->html());

    if ($name == 'status') {
        $form->addInnerText(Html::Select()
            ->setName($name)
            ->setId($name)
            ->setSelectedValues([$value])
            ->setData($statusList)
            ->html());
    } elseif ($name == 'title') {
        $form->addInnerText(Html::Textarea()
            ->setName($name)
            ->setId($name)
            ->setInnerText($value)
            ->html());
    } else {
        $form->addInnerText(Html::Input()
            ->setName($name)
            ->setId($name)
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
        ->setClass('btn btn-primary')
        ->setValue('OK')
        ->html())
    ->html();
