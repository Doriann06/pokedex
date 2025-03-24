<?php
    require_once('../common/header.php');
    require_once('../config/database.php');
    $id= $_POST['id'];
    $nom=$_POST["prenom"];
    $taille=$_POST["taille"];
    $poid=$_POST["poid"];
    $description=$_POST["description"];
    $image=$_POST["image"];
   echo ("INSERT INTO pokemon (idPok,nomPok,taillePok,poidPok,descPok,imgPok) VALUES ($id,$nom,$taille, $poid,$description,$image')");
      $new=$connection->exec("INSERT INTO pokemon (idPok,nomPok,taillePok,poidPok,descPok,imgPok) VALUES ($id,$nom,$taille, $poid,$description,$image')");
    
    
    $type2="";
    $select=$connection->query("SELECT * from types");
    $select->setFetchMode(PDO::FETCH_OBJ);
    while($enregistrement=$select->fetch())
    {
      
      if($enregistrement->nomType==$_POST['type'])
      {
         $type1=$enregistrement->idType;
      }
      if($enregistrement->nomType==$_POST['type2'])
      {
         $type2=$enregistrement->idType;
      }
    }
     $new2=$connection->exec("INSERT INTO  assopokemontype values $id,$type1");
     if ($type2!="")
     {
        $new3=$connection->exec("INSERT INTO  assopokemontype values $id,$type2");  
     }

     echo"ajout reusit ";
    echo "<h3><a href=home.php>retour au pokedex</a><h3>";
    require_once('../common/footer.php');
    ?>