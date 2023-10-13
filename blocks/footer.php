<footer class="footer pt-3 pb-3">
  <div class="container">
    <div class="row">
      <div class="col-12 col-sm-12 col-md-6 col-lg-6">
        <img src="img/logo.png" id="footer-logo">
      </div>
      <div class="col-12 col-sm-6 col-md-3 col-lg-3">
        <h3 class="title">Навигация</h3>
        <div class="footer-navigation">
          <ul>
            <li class="nav-item">
              <a href="index.php" title="Главная">Главная</a>
            </li>
            <?php if ($home) { ?>
              <li class="nav-item">
                <a class="about" title="О нас">О нас</a>
              </li>
              <li class="nav-item">
                <a href="catalog.php" title="Запчасти">Запчасти</a>
              </li>
              <li class="nav-item">
                <a class="news" title="Новости">Новости</a>
              </li>
              <li class="nav-item">
                <a class="services" href="services.php" title="Услуги">Услуги</a>
              </li>
            <?php } else { ?>
              <li class="nav-item">
                <a class="about" href="index.php" title="О нас">О нас</a>
              </li>
              <li class="nav-item">
                <a href="catalog.php" title="Запчасти">Запчасти</a>
              </li>
              <li class="nav-item">
                <a class="news" href="index.php" title="Новости">Новости</a>
              </li>
              <li class="nav-item">
                <a class="services" href="services.php" title="Услуги">Услуги</a>
              </li>
            <?php }  ?>
            <li class="nav-item">
              <a href="contact.php" title="Контакты">Контакты</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-12 col-sm-6 col-md-3 col-lg-3">
        <h3 class="title">Контакты</h3>
        <strong style="color: #33A64B;">Менеджер по продажам:</strong>
        <p>Олег<br>
          <i class="fa fa-phone fa-lg" aria-hidden="true"></i>
          +7(921) 466-56-74<br>
          <strong style="color: #33A64B;">Генеральный директор:</strong>
          <br>Максим<br>
          <i class="fa fa-phone fa-lg" aria-hidden="true"></i>
          +7(921) 454-24-04
        </p>
        <strong style="color: #33A64B;">Мы здесь:</strong>
        <div class="d-flex justify-content-start" id="social">
          <div class="vk">
            <a href="https://vk.com/club128396762" target="_blank">
              <span style="font-size: 32px; color: #597da3; padding-left: 0px;">
                <i class="fa fa-vk fa-lg"></i>
              </span>
            </a>
          </div>
          <div class="avito">
            <a href="https://www.avito.ru/i15316416?page_from=from_items_list_icon&iid=1886115350" target="_blank">
              <span>
                <img style="width: 100%; height:43px; margin-top:7px;" src="img\Socials\avito.svg" alt="">
              </span>
            </a>
          </div>
          <!-- <div class="twit">
            <a href="#" target="_blank">
              <span style="font-size: 32px; color: #00acee;">
                <i class="fa fa-twitter fa-lg"></i>
              </span>
            </a>
          </div>
          <div class="fb">
            <a href="" target="_blank">
              <span style="font-size: 32px; color: #3b5998;">
                <i class="fa fa-facebook-square fa-lg"></i>
              </span>
            </a>
          </div>
          <div class="ok">
            <a href="#" target="_blank">
              <span style="font-size: 32px; color: #ed812b;">
                <i class="fa fa-odnoklassniki-square fa-lg"></i>
              </span>
            </a>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/b6af12b7e9.js"></script>
</body>

</html>