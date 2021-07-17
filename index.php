<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
use Twig\Environment;
use Twig\Loader\FilesystemLoader;
use Omicron\DiscountMapper;

require __DIR__ . '/vendor/autoload.php';
/*
 * Add Twig templates
 */
$loader = new FilesystemLoader('templates');
$view = new Environment($loader);

/*
 * Add config connect db
 */
$config = include 'config/database.php';
$dsn = $config['dsn'];
$username = $config['username'];
$password = $config['password'];

/*
 * Checks the connection error
 */
try {
  $connection = new PDO($dsn, $username, $password);
  $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $exception) {
  echo 'Database error' . $exception->getMessage();
  exit();
}

/*
 * Add DiscountMapper class
 */
$discountMapper = new DiscountMapper($connection);

$app = AppFactory::create();

$app->get('/', function (Request $request, Response $response, $args) use ($view, $discountMapper) {
  $discounts = $discountMapper->getDiscountList();
  $body = $view->render('home.twig', [
    'discounts' => $discounts,
    'page_title' => 'Home page'
  ]);
  $response->getBody()->write($body);
  return $response;
});

$app->run();