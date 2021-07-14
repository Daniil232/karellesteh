<?php
session_start();
require_once("include/db.php");
require_once("include/functions.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');

// $products = get_table('productsview');
$categories = get_table('categories');
$categoryparts = get_table('categoryparts');
$models = get_table('models');
$marks = get_table('marks');

$selectCategory = "Все категории";
$selectMark = "Все марки";
$selectModel = "Все модели";
$selectCategorypart = "Все виды";

if (isset($_GET['selectCategory'])) {
  $selectCategory = $_GET['selectCategory'];
  $_SESSION['selectCategory'] = $selectCategory;
}
if (isset($_GET['selectMark'])) {
  $selectMark = $_GET['selectMark'];
  $_SESSION['selectMark'] = $selectMark;
}
if (isset($_GET['selectModel'])) {
  $selectModel = $_GET['selectModel'];
  $_SESSION['selectModel'] = $selectModel;
}
if (isset($_GET['selectCategorypart'])) {
  $selectCategorypart = $_GET['selectCategorypart'];
  $_SESSION['selectCategorypart'] = $selectCategorypart;
}

if (isset($_POST['records-limit'])) {
  $_SESSION['records-limit'] = $_POST['records-limit'];
}

$limit = isset($_SESSION['records-limit']) ? $_SESSION['records-limit'] : 3;
$page = (isset($_GET['page']) && is_numeric($_GET['page'])) ? $_GET['page'] : 1;
$paginationStart = ($page - 1) * $limit;
$products = $con->query("SELECT * FROM productsview LIMIT $paginationStart, $limit")->fetchAll();

// Get total records
$sql = $con->query("SELECT count(id) AS id FROM productsview")->fetchAll();
$allRecrods = $sql[0]['id'];
// Calculate total pages
$totoalPages = ceil($allRecrods / $limit);

// Prev + Next
$prev = $page - 1;
$next = $page + 1;

require_once('blocks/header.php');
?>
<section class="catalog">

  <div class="container">
    <div class="catalog-filter mb-3">
      <form class="row" method="get">
        <?php
        dropdownCreate('Категория', 'Все категории', 'selectCategory', $categories);
        dropdownCreate('Марка ', 'Все марки', 'selectMark', $marks);
        ?>
        <div class="col-md-5 col-lg-2">
          <label for="selectModel" class="form-label">Модель:</label>
          <select class="form-select" name="selectModel" id="selectModel">
            <option selected>...</option>';
            <?php
            if (isset($_GET['selectMark'])) {
              $sql = "SELECT * FROM `modelsview` WHERE markName = :markName";
              $query = $con->prepare($sql);
              $query->execute(['markName' => $selectMark]);
              $models = $query->fetchAll(PDO::FETCH_OBJ);
              foreach ($models as $row) {
            ?>
                <option value="<?= $row->modelName ?>"><?= $row->modelName ?></option>
            <?php }
            } ?>
          </select>
        </div>
        <?php
        // dropdownCreate('Модель', 'Все модели', 'selectModel', $models);
        dropdownCreate('Вид запчасти', 'Все виды', 'selectCategorypart', $categoryparts);
        ?>
        <div class="col-md-2 col-lg-1 align-self-end">
          <button type="submit" id="btnSelectSearch" class="btn btn-success mt-3" name="btn_submit_seach">
            Поиск
          </button>
        </div>
      </form>

      <div class="row" id="errorBlock"></div>

    </div>
    <div class="d-flex flex-row-reverse bd-highlight mb-3">
      <form action="catalog.php" method="post">
        <select name="records-limit" id="records-limit" class="custom-select">
          <option disabled selected>Records Limit</option>
          <?php foreach ([3, 5, 7, 10, 12] as $limit) : ?>
            <option <?php if (isset($_SESSION['records-limit']) && $_SESSION['records-limit'] == $limit) echo 'selected'; ?> value="<?= $limit; ?>">
              <?= $limit; ?>
            </option>
          <?php endforeach; ?>
        </select>
      </form>
    </div>

    <div class="table-responsive">
      <table class="table align-middle">
        <thead>
          <tr>
            <th scope="col">Изображение</th>
            <th scope="col">Наименование</th>
            <th scope="col">Год</th>
            <th scope="col">Состояние</th>
            <th scope="col">Категория</th>
          </tr>
        </thead>
        <tbody>
          <?php
          foreach ($products as $product) :
            if ($product["category"] == $selectCategory || $selectCategory == "Все категории") {
              if ($product["mark"] == $selectMark || $selectMark == "Все марки") {
                if ($product["model"] == $selectModel || $selectModel == "Все модели" || $selectModel == "...") {
                  if ($product["categoryPart"] == $selectCategorypart || $selectCategorypart == "Все виды") {
          ?>
                    <tr>
                      <td scope="row">
                        <a href="product.php?productId=<?= $product["id"] ?>">
                          <img src="<?= $product["img"] ?>" alt="Книга">
                        </a>
                      </td>
                      <td>
                        <a href="product.php?productId=<?= $product["id"] ?>"><?= $product["name"] ?>
                        </a>
                      </td>
                      <td><?= $product["year"] ?></td>
                      <td><?= $product["condtion"] ?></td>
                      <td><?= $product["categoryPart"] ?></td>
                    </tr>
          <?php
                  }
                }
              }
            }
          endforeach; ?>

        </tbody>
      </table>
    </div>

    <!-- Pagination -->
    <nav aria-label="Page navigation example mt-5">
      <ul class="pagination justify-content-center">
        <li class="page-item <?php if ($page <= 1) {
                                echo 'disabled';
                              } ?>">
          <a class="page-link" href="<?php if ($page <= 1) {
                                        echo '#';
                                      } else {
                                        echo "?page=" . $prev;
                                      } ?>">Previous</a>
        </li>

        <?php for ($i = 1; $i <= $totoalPages; $i++) : ?>
          <li class="page-item <?php if ($page == $i) {
                                  echo 'active';
                                } ?>">
            <a class="page-link" href="catalog.php?page=<?= $i; ?>"> <?= $i; ?> </a>
          </li>
        <?php endfor; ?>

        <li class="page-item <?php if ($page >= $totoalPages) {
                                echo 'disabled';
                              } ?>">
          <a class="page-link" href="<?php if ($page >= $totoalPages) {
                                        echo '#';
                                      } else {
                                        echo "?page=" . $next;
                                      } ?>">Next</a>
        </li>
      </ul>
    </nav>
  </div>
</section>


<?php
// require_once ('blocks/carousel.php');
// require_once ('blocks/posts.php');
// require_once ('blocks/blog.php');
require_once("blocks/footer.php");
?>
<script type="text/javascript" src="js/catalog.js"></script>