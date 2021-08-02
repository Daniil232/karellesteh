<?php
session_start();
require("include/db.php");
require("include/functions.php");
$website_title = 'PHP блог';
require('blocks/head.php');
require('pagination.php');

$url = $_SERVER['REQUEST_URI'];
$url = preg_replace('/[&|?]page=\d/', '', $url);
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
        <div class="col-md-6 col-lg-2">
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
    <?php
    $conditions = array();
    if (!empty($_REQUEST['selectCategory']) && $selectCategory != "Все категории")
      $conditions[] = "category = '" . $selectCategory . "'";

    if (!empty($_REQUEST['selectMark']) && $selectMark != "Все марки")
      $conditions[] = "mark = '" . $selectMark . "'";

    if (!empty($_REQUEST['selectModel']) && ($selectModel != "..."))
      $conditions[] = "model = '" . $selectModel . "'";

    if (!empty($_REQUEST['selectCategorypart']) && $selectCategorypart != "Все виды")
      $conditions[] = "categoryPart = '" . $selectCategorypart . "'";

    $sql = 'select * from productsview ';
    if (!empty($conditions)) {
      $sql .= ' where ' . implode(' AND ', $conditions);
    }
    // $sql .= ' LIMIT 1000';
    $products = get_tableSql($sql);

    $peger = new ArrayPaginator($url, 3);
    $items = $peger->getItems($products);
    if (empty($items)) {
    ?>
      <div class="row">
        <h2>По данному запросу товары не найдены</h2>
      </div>
  </div>
<?php } else { ?>
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
        foreach ($items as $row) :
        ?>
          <tr>
            <td scope="row">
              <a href="product.php?productId=<?= $row["id"] ?>">
                <img src="<?= $row["img"] ?>" alt="Книга">
              </a>
            </td>
            <td>
              <a href="product.php?productId=<?= $row["id"] ?>"><?= $row["name"] ?>
              </a>
            </td>
            <td><?= $row["year"] ?></td>
            <td><?= $row["condtion"] ?></td>
            <td><?= $row["categoryPart"] ?></td>
          </tr>
        <?php
        endforeach; ?>

      </tbody>
    </table>
  </div>
<?php
      echo $peger->display;
    } ?>
</div>
</section>

<?php
// require_once ('blocks/carousel.php');
// require_once ('blocks/posts.php');
// require_once ('blocks/blog.php');
require_once("blocks/footer.php");
?>
<script type="text/javascript" src="js/catalog.js"></script>