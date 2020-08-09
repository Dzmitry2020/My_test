<nav class="navbar navbar-expand-md fixed-top navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item<?= ($controllerType == 'default') ? ' active' : '' ?>">
                <a class="nav-link" href="?action=default&type=default"><i class='fa fa-home'></i> Main</a>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'users') ? ' active' : (($controllerType == 'groups') ? ' active' : '') ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Access
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=users">Users</a>
                    <a class="dropdown-item" href="?action=show&type=groups">Groups</a>
                    <!--                    <div class="dropdown-divider"></div>-->
                    <!--                    <a class="dropdown-item" href="#">Something else here</a>-->
                </div>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'classes') ? ' active' : (($controllerType == 'students') ? ' active' : (($controllerType == 'grades') ? ' active' : '')) ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Settings
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=students">Students</a>
                    <a class="dropdown-item" href="?action=show&type=classes">Classroom</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="?action=show&type=grades">Grades</a>
                </div>
            </li>
            <li class="nav-item dropdown<?= ($controllerType == 'tests') ? ' active' : (($controllerType == 'questions') ? ' active' : (($controllerType == 'results') ? ' active' : '')) ?>">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    Quizes
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="?action=show&type=tests">Topics</a>
                    <a class="dropdown-item" href="?action=show&type=questions">Questions</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="?action=show&type=results">Results</a>
                </div>
            </li>
            <li class="nav-item<?= $controllerType == 'classes' ? ' active' : '' ?>">
                <a class="nav-link" href="?action=logout&type=login">Logout <i class='fa fa-sign-out-alt'></i></a>
            </li>
        </ul>
    </div>
    <span class="navbar-text">
    <?= empty($_SESSION['user']) ? '' : $_SESSION['user']['name'] ?>
  </span>
</nav>