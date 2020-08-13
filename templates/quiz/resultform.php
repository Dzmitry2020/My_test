<div class="kkk"><h4>
        Correct answers: <?= $_SESSION['right'] ?> of <?= count($_SESSION['questions']) ?></b>
        &nbsp;(<b><?= $_SESSION['quizresult'] ?>%</b>) <br>

    </h4></div>

<?php

use TexLab\Html\Html;

/**
 * @var string $type Имя контроллера
 * @var string $action
 */

$form = Html::Form()
    ->setMethod('POST')
    ->setAction($action);

$form->addInnerText(
    Html::Input()
        ->setType('submit')
        ->setClass('btn btn-success')
        ->setValue('Retry')
        ->html()
);


echo $form->html();

