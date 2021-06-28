<?php
session_start();
require_once("include/db.php");
require_once("include/functions.php");
// require_once("include/functions.php");
$website_title = 'PHP блог';
require_once('blocks/head.php');

$page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 4;
$offset = $limit * ($page - 1);
$products = get_productsview($limit, $offset);
$categories = get_categories();
$categoryparts = get_categoryparts();
$marks = get_marks();
$models = get_models();
$conditions = get_conditions();
?>

<body>
  <?php
  require_once('blocks/header.php');
  ?>
  <main class="container">
    <div class="d-flex justify-content-between mb-3">
      <?php
      dropdownCreate('Категория', 'Все категории', 'dropdownMenuButton1', $categories);
      dropdownCreate('Марка ', 'Все марки', 'dropdownMenuButton2', $marks);
      dropdownCreate('Модель', 'Все модели', 'dropdownMenuButton3', $models);
      dropdownCreate('Вид запчасти', 'Все виды', 'dropdownMenuButton4', $categoryparts);
      ?>
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
          ?>
            <tr>
              <td scope="row">
                <a href="book.php?book_id=<?= $book['book_id'] ?>">
                  <img src="<?= $product['Изображение'] ?>" alt="Книга">
                </a>
              </td>
              <td>
                <a href="book.php?book_id=<?= $book['book_id'] ?>"><?= $product['Наименование'] ?>
                </a>
              </td>
              <td><?= $product['Год'] ?></td>
              <td><?= $product['Состояние'] ?></td>
              <td><?= $product['Вид запчасти'] ?></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>


    <?php
    // require_once ('blocks/carousel.php');
    // require_once ('blocks/posts.php');
    // require_once ('blocks/blog.php');
    ?>
  </main>
  <?php
  require_once("blocks/footer.php");
  ?>
</body>

</html>