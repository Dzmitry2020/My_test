<?php


/** @var int $pageCount Количество страниц
 * @var array $fields Список полей таблицы
 * @var array $comments Комментарии к полям таблицы
 * @var string $type Имя контроллера
 * @var array $table
 * @var array $testsTitleList
 * @var array $answerVariant
 */

use TexLab\Html\Html;

if ($pageCount > 1) {
    echo Html::Pagination()
        ->setClass('pagination')
        ->setUrlPrefix("?action=show&type=" . $type)
        ->setPageCount($pageCount)
        ->setCurrentPage($this->data['currentPage'])
        ->html();
}

$comments[] = 'Удаление';
$comments[] = 'Правка';

$delA = Html::A()->addInnerText('❌')->setClass('del');
$edtA = Html::A()->addInnerText('✏')->setClass('edit');

foreach ($table as &$row) {
    $row['ans_right'] = $answerVariant[$row['ans_right']];
    $row[] = $delA
        ->setHref("?action=del&type=$type&id=$row[id]")
        ->html();
    $row[] = $edtA
        ->setHref("?action=showedit&type=$type&id=$row[id]")
        ->html();
}

echo Html::Table()
    ->setHeaders($comments)
    ->setData($table)
    ->setClass('table')
    ->html();

$form = Html::Form()
    ->setMethod('POST')
    ->setAction("?action=add&type=$type")
    ->setClass('form');

foreach ($fields as $field) {

    $form->addInnerText(Html::Label()
        ->setFor($field)
        ->setInnerText($comments[$field])
        ->html());

    if ($field == 'test_id') {
        $form->addInnerText(Html::Select()
            ->setName($field)
            ->setId($field)
            ->setClass('test-title-list')
            ->setData($testsTitleList)
            ->html());
    } elseif ($field == 'content') {
        $form->addInnerText(Html::Textarea()
            ->setClass('question')
            ->setName($field)
            ->setId($field)
            ->html());
    } elseif ($field == 'ans_right') {
        $form->addInnerText(Html::Select()
            ->setName($field)
            ->setId($field)
            ->setData($answerVariant)
            ->html());
    } else {
        $form->addInnerText(Html::Input()
            ->setClass('answer')
            ->setName($field)
            ->setId($field)
            ->html());
    }

}

$form->addInnerText(
    Html::Input()
        ->setType('submit')
        ->setValue('Добавить')
        ->html()
);

echo $form->html();
