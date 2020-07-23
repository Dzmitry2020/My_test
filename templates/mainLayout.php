<?php /** @var string $controllerType */ ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>

<nav class="navbar navbar-expand-md fixed-top navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item<?= $controllerType == '' ? ' active' : '' ?>">
                <a class="nav-link" href="/">Главная</a>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'users') ? ' active' : (($controllerType == 'groups') ? ' active' : '') ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Доступ
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=users">Пользователи</a>
                    <a class="dropdown-item" href="?action=show&type=groups">Группы</a>
                    <!--                    <div class="dropdown-divider"></div>-->
                    <!--                    <a class="dropdown-item" href="#">Something else here</a>-->
                </div>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'classes') ? ' active' : (($controllerType == 'students') ? ' active' : (($controllerType == 'grades') ? ' active' : '')) ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Настройки
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=students">Ученики</a>
                    <a class="dropdown-item" href="?action=show&type=classes">Классы</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="?action=show&type=grades">Критерии оценки</a>
                </div>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'tests') ? ' active' : (($controllerType == 'questions') ? ' active' : (($controllerType == 'results') ? ' active' : '')) ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Тесты
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=tests">Список тестов</a>
                    <a class="dropdown-item" href="?action=show&type=questions">Список вопросов</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="?action=show&type=results">Результаты тестов</a>
                </div>
            </li>
            <li class="nav-item<?= $controllerType == 'classes' ? ' active' : '' ?>">
                <a class="nav-link" href="?action=show&type=login">Logform</a>
            </li>
<!--            <li class="nav-item--><?//= $controllerType == 'students' ? ' active' : '' ?><!--">-->
<!--                <a class="nav-link" href="?action=show&type=students">Ученики</a>-->
<!--            </li>-->
<!--            <li class="nav-item--><?//= $controllerType == 'tests' ? ' active' : '' ?><!--">-->
<!--                <a class="nav-link" href="?action=show&type=tests">Тесты</a>-->
<!--            </li>-->
        </ul>
    </div>
</nav>

<main role="main" class="container">
    <div class="container-fluid" style="margin-top:80px">
        <?php
        $this->body();
        ?>
    </div>
</main>

<script src="js/jquery-3.5.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/my.js"></script>
<script src="js/setsel.js"></script>
</body>

</html>