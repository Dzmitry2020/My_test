<nav class="navbar navbar-expand-md fixed-top navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item<?= ($controllerType == 'results') ? ' active' : '' ?>">
                <a class="nav-link" href="?action=show&type=results"><i class='fa fa-award'></i> Results</a>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'classes') ? ' active' : (($controllerType == 'students') ? ' active' : (($controllerType == 'grades') ? ' active' : '')) ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    <i class='fa fa-cog'></i> Settings
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=students"><i class='fa fa-user-graduate'></i> Students</a>
                    <a class="dropdown-item" href="?action=show&type=classes"><i class='fa fa-users'></i> Class</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="?action=show&type=grades"><i class='fa fa-sliders-h'></i> Grades</a>
                </div>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'tests') ? ' active' : (($controllerType == 'questions') ? ' active' : '') ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    <i class='fa fa-list-ul'></i> Tests
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=tests"><i class='fa fa-tasks'></i> Topics</a>
                    <a class="dropdown-item" href="?action=show&type=questions"><i class='fa fa-question-circle'></i> Questions</a>
                </div>
            </li>
            <li class="nav-item<?= $controllerType == 'classes' ? ' active' : '' ?>">
                <a class="nav-link" href="?action=logout&type=login">Logout <i class='fa fa-sign-out-alt'></i></a>
            </li>
        </ul>
    </div>
    <span class="navbar-text">
    <?= empty($_SESSION['user']) ? '' : $_SESSION['user']['name'] .' ('. $_SESSION['user']['cod'] . ')'?>
  </span>
</nav>