<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
    </head>
    <body>
            
        <form action="delete.php" method="post">
            <label for="items">Choisissez un pokemon a suprimer :</label>
        <select name="items" id="items">
            <?php
            require_once('../common/header.php');
            require_once('../config/database.php');

            // Requête pour récupérer les données
            $select=$connection->query("SELECT * FROM pokemon");
                $select->setFetchMode(PDO::FETCH_OBJ);


            // Vérifier si des résultats ont été retournés
           
                // Afficher les options dans la liste déroulante
                while($enregistrement = $select->fetch()) {
                    echo '<option>',$enregistrement->nomPok,"</a>","</option>";
                
            } 

           
            ?>
        
        </select>
        <input type="submit" value="Soumettre">
        </form>
        <?php
        require_once('../common/footer.php');
        ?>
    </body>
</html>