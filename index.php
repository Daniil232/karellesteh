<?php
session_start();
require_once("include/db.php");
require_once("include/functions.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');

$products = get_table('productsview');
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
<main class="container">
  <div class="row">
    <form method="get">
      <?php
      dropdownCreate('Категория', 'Все категории', 'selectCategory', $categories);
      dropdownCreate('Марка ', 'Все марки', 'selectMark', $marks);

      ?>

      <div class="col">
        <label for="selectModel" class="form-label">Модель:</label>
        <select class="form-select" name="selectModel" id="selectModel">
          <option selected>...</option>';
          <?php
          if (isset($_GET['selectMark'])) {
            $sql = "SELECT * FROM `modelsview` WHERE markName = :markName";
            $query = $pdo->prepare($sql);
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
      <div class="col align-self-end">
        <button type="submit" id="btnSelectSearch" class="btn btn-success mt-3" name="btn_submit_seach">
          Поиск
        </button>
      </div>
    </form>
  </div>

  <div id="result"></div>
  <div class="row" id="errorBlock"></div>

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
          if ($product->category == $selectCategory || $selectCategory == "Все категории") {
            if ($product->mark == $selectMark || $selectMark == "Все марки") {
              if ($product->model == $selectModel || $selectModel == "Все модели" || $selectModel == "...") {
                if ($product->categoryPart == $selectCategorypart || $selectCategorypart == "Все виды") {
        ?>
                  <tr>
                    <td scope="row">
                      <a href="product.php?productId=<?= $product->id ?>">
                        <img src="<?= $product->img ?>" alt="Книга">
                      </a>
                    </td>
                    <td>
                      <a href="product.php?productId=<?= $product->id ?>"><?= $product->name ?>
                      </a>
                    </td>
                    <td><?= $product->year ?></td>
                    <td><?= $product->condtion ?></td>
                    <td><?= $product->categoryPart ?></td>
                  </tr>
        <?php }
              }
            }
          }
        endforeach; ?>
      </tbody>
    </table>
  </div>



  <?php
  // require_once ('blocks/carousel.php');
  // require_once ('blocks/posts.php');
  // require_once ('blocks/blog.php');
  require_once("blocks/footer.php");

  ?>