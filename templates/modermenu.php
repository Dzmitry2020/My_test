<nav class="navbar navbar-expand-md fixed-top navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item<?= ($controllerType == 'default') ? ' active' : '' ?>">
                <a class="nav-link" href="?action=default&type=default"><i class='fa fa-home'></i> Главная</a>
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
                <a class="nav-link" href="?action=logout&type=login">Logout</a>
            </li>
        </ul>
    </div>
    <span class="navbar-text">
    <?= empty($_SESSION['user']) ? '' : $_SESSION['user']['name'] ?>
  </span>
</nav>