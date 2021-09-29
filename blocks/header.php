<!-- <section class="main-navbar fixed-top"> -->
<header class="main-navbar">
  <div class="container">
    <div class="row">
      <nav class="navbar navbar-expand-lg position-sticky navbar-light">
        <a class="navbar-brand" href="index.php"><img src="img/logoMini.png" alt="Логотип"></a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse justify-content-end" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto text-center">
            <li class="nav-item active">
              <a class="nav-link" href="index.php">Главная</span></a>
            </li>
            <?php if ($home) { ?>
              <li class="nav-item">
                <a class="nav-link about">О нас</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="catalog.php">Каталог</a>
              </li>
              <li class="nav-item">
                <a class="nav-link news">Новости</a>
              </li>
            <?php } else { ?>
              <li class="nav-item">
                <a class="nav-link" href="index.php">О нас</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="catalog.php">Запчасти</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.php">Новости</a>
              </li>
            <?php }  ?>
            <li class="nav-item">
              <a class="nav-link" href="contact.php">Контакты</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.php">Услуги</a>
            </li>

          </ul>
        </div>
      </nav>
    </div>
  </div>
</header>