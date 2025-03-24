<?php
    require_once('../common/header.php');
    require_once('../config/database.php');
    $select=$connection->query("SELECT * from pokemon ");
    $select->setFetchMode(PDO::FETCH_OBJ);
    while($enregistrement=$select->fetch())
    {
        if($enregistrement->idPok==$_GET["id"]){
            $id=$enregistrement->idPok;
            echo "<h2>$enregistrement->nomPok</h2>","<img src=$enregistrement->imgPok>","<br>", " taille :",$enregistrement->taillePok,"m", "<br>","  poid:",$enregistrement->poidPok,"kg","<br>"," description ",$enregistrement->descPok,"<br>";
        }

       
    }
    
    $Bonus=0;
    $select=$connection->query("SELECT * from assopokemontype");
    $select->setFetchMode(PDO::FETCH_OBJ);
    while($enregistrement=$select->fetch())
    {
        
        if ($enregistrement->idPok==$id && $enregistrement->idType==5) {
            $Bonus=1;
        }
    }
    echo ("Bonus :".$Bonus);
    require_once('../common/footer.php');
?>