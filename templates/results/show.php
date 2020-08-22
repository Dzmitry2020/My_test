<?php


/** @var int $pageCount Количество страниц
 * @var array $fields Список полей таблицы
 * @var array $comments Комментарии к полям таблицы
 * @var string $type Имя контроллера
 * @var array $table
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

unset($comments['id']);
unset($comments['student_id']);

$comments = ['class' => 'Class'] + $comments;
$comments = ['student_id' => 'Student'] + $comments;
$comments[] = 'Grade';

echo Html::Table()
    ->setHeaders($comments)
    ->setData($table)
    ->setClass('table table-striped')
    ->html();

$form = Html::Form()
    ->setMethod('POST')
    ->setAction("?action=add&type=$type")
    ->setClass('form');

//$form->addInnerText(
//    Html::Input()
//        ->setType('button')
//        ->setClass('btn btn-primary')
//        ->setValue('Распечатать')
//        ->html()
//);

echo $form->html();
