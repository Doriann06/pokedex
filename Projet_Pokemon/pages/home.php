<?php
    require_once('../common/header.php');
    require_once('../config/database.php');
    echo "<h2>liste des pokemon</h2>";
    echo "<ul>";
    $select=$connection->query("SELECT * from pokemon");
    $select->setFetchMode(PDO::FETCH_OBJ);
    while($enregistrement=$select->fetch())
    {
        echo '<li>',"<a href='detail.php?id=$enregistrement->idPok'>","<img src=$enregistrement->imgPok>",$enregistrement->idPok," ",$enregistrement->nomPok,"</a>","</li>";
    }
    echo "<h3><a href=nouveau.html>Ajouter un pokemon (non foctionnel)</a> <br><h3>";
    echo "<a href=suprimer.php>Suprimer un pokemon</a><br>";
    require_once('../common/footer.php');
?>