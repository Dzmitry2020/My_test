<div id="cd">
    <SCRIPT
            SRC="countdown.php?timezone=Europe/Minsk&countto=<?=$_SESSION['timefinish']?>&do=r&data=<?=rawurlencode('?action=result&type=quiz')?>">
    </SCRIPT>
</div><br>

<h3><?= $_SESSION['topic'] ?> (question <?= ($_SESSION['qNumber']+1) ?> from <?=count($_SESSION['questions'])?>)</h3>
<div> <h4><?= $_SESSION['questions'][$_SESSION['qNumber']]['content'] ?></h4></div>


<?php

use Core\Config;
use TexLab\Html\Html;

/**
 * @var string $type Имя контроллера
 * @var string $action
 */

$form = Html::Form()
    ->setMethod('POST')
    ->setAction($action);

$form->addInnerText(
"<div class='form-check'>"
    . Html::Input()
        ->setType('radio')
        ->setClass('form-check-input')
        ->setId('A')
        ->setName('answer')
        ->setValue('0')
        ->setChecked( ($_SESSION['questions'][$_SESSION['qNumber']]['answer'] == 0) ? 1 : 0)
        ->html()
    . Html::Label()
        ->setClass('form-check-label')
        ->setFor('A')
        ->setInnerText($_SESSION['questions'][$_SESSION['qNumber']]['answer1'])
        ->html()
    . '</div>'
    . "<div class='form-check'>"
    . Html::Input()
        ->setType('radio')
        ->setClass('form-check-input')
        ->setId('B')
        ->setName('answer')
        ->setValue('1')
        ->setChecked( ($_SESSION['questions'][$_SESSION['qNumber']]['answer'] == 1) ? 1 : 0)
        ->html()
    . Html::Label()
        ->setClass('form-check-label')
        ->setFor('B')
        ->setInnerText($_SESSION['questions'][$_SESSION['qNumber']]['answer2'])
        ->html()
    . '</div>'
    . "<div class='form-check'>"
    . Html::Input()
        ->setType('radio')
        ->setClass('form-check-input')
        ->setId('C')
        ->setName('answer')
        ->setValue('2')
        ->setChecked( ($_SESSION['questions'][$_SESSION['qNumber']]['answer'] == 2) ? 1 : 0)
        ->html()
    . Html::Label()
        ->setClass('form-check-label')
        ->setFor('C')
        ->setInnerText($_SESSION['questions'][$_SESSION['qNumber']]['answer3'])
        ->html()
);

if (!empty($_SESSION['questions'][$_SESSION['qNumber']]['answer4'])){
    $form->addInnerText(
        '</div>'
            . "<div class='form-check'>"
            . Html::Input()
            ->setType('radio')
            ->setClass('form-check-input')
            ->setId('D')
            ->setName('answer')
            ->setValue('3')
            ->setChecked( ($_SESSION['questions'][$_SESSION['qNumber']]['answer'] == 3) ? 1 : 0)
            ->html()
        . Html::Label()
            ->setClass('form-check-label')
            ->setFor('D')
            ->setInnerText($_SESSION['questions'][$_SESSION['qNumber']]['answer4'])
            ->html()
    );
}

$form->addInnerText('</div><br>');

if ($_SESSION['qNumber'] > 0){
    $form->addInnerText(
        Html::Input()
            ->setType('submit')
            ->setClass('btn btn-primary')
            ->setName('back')
            ->setValue('<< Back')
            ->html()
    );
}

if (($_SESSION['qNumber']+1) == Config::QUESTIONS_COUNT){
    $form->addInnerText(
        Html::Input()
            ->setType('submit')
            ->setClass('btn btn-danger')
            ->setName('result')
            ->setValue('Result')
            ->html()
    );
} else {
    $form->addInnerText(
        Html::Input()
            ->setType('submit')
            ->setClass('btn btn-primary')
            ->setName('next')
            ->setValue('Next >>')
            ->html()
   );
}

echo $form->html();

