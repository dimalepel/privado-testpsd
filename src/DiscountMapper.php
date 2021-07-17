<?php

namespace Omicron;

use PDO;

class DiscountMapper {

  private PDO $connection;

  public function __construct(PDO $connection) {
    $this->connection = $connection;
  }

  public function getDiscountList(): ?array {
    $statement = $this->connection->prepare('SELECT * FROM discount ORDER BY title ASC');
    $statement->execute();
    return $statement->fetchAll();
  }
}
