<?php

use TexLab\Html\Html;

/**
 * @var string $type Имя контроллера
 * @var string $action
 */

$form = Html::Form()
    ->setMethod('POST')
    ->setAction($action);
?>

    <h2>Главная страница</h2>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
        <label class="form-check-label" for="exampleRadios1">
            A. Первый ответ
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
        <label class="form-check-label" for="exampleRadios2">
            B. Второй ответ
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3">
        <label class="form-check-label" for="exampleRadios3">
            С. Третий ответ
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios4" value="option4">
        <label class="form-check-label" for="exampleRadios4">
            D. Четвёртый ответ
        </label>
    </div>

<?php
$form->addInnerText(
    Html::Input()
        ->setType('submit')
        ->setClass('btn btn-primary')
        ->setValue('Next >>')
        ->html()
);

echo $form->html();

