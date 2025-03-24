<?php
require_once('../common/header.php');
require_once('../config/database.php');
$select=$connection->query("SELECT * from pokemon");
    $select->setFetchMode(PDO::FETCH_OBJ);
    while($enregistrement=$select->fetch())
    {
      
      if($enregistrement->nomPok==$_POST['items'])
      {
         $id=$enregistrement->idPok;
      }
      
    }
    
    $supresion=$connection->exec ("DELETE FROM assopokemontype WHERE idPok = $id ");
    $select=$connection->exec("DELETE FROM pokemon WHERE idPok = $id");

    echo"supresion reusite ";
    echo "<h3><a href=home.php>retour au pokedex</a></h3>";
    require_once('../common/footer.php');

?>