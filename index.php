<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Document</title>
    <?php require ('bdd.php'); ?>
    <style>
    *{
        margin:0;
    }
    .header{
        height:100vh;
        
        text-align:center;
        margin:auto;
    }
    .header img{
        width:100%;
        height:100vh;
    }
   .header form{
        position: absolute ;
        top:12.5vh;
        right:35vw;
        
    }
    .header label{
        color: white;
        font-weight:600;
    }
    </style>
</head>
<body>'

<div class="header">
<?php include('nav.php');?>
<img class="img-fluid rounded mx-auto d-block" src="img\galerie-pointe-des-chateaux-4.jpg" alt="">
<form class=" align-middle mx-auto shadow-lg w-25 p-3 form-group"action="" method="POST">
    <label for="">Date de d'arrivée</label>
    <input class="form-control bg-dark text-white"type="date" name="arrive" id="">
    <label for="">Date de départ</label>
    <input class="form-control bg-dark text-white"type="date" name="depart" id="">
    <label for="">nb personne</label>
    <input class="form-control bg-dark text-white"type="number" name="nb_personne" id="">
    <label for="">prix mini</label>
    <input class="form-control bg-dark text-white" type="number" name="prix_mini" id="">
    <label for="">prix max</label>
    <input class="form-control bg-dark text-white" type="number" name="prix_max" id="">
    <input type="submit" value="rechercher">
</form>

</div>
    <h1 class="d-block">Nos locations saisonieres</h1>
    
   <?php
   if (isset($_POST['prix_mini'])&&isset($_POST['prix_max']) || isset($_POST['nb_personne'])){
   $prix_mini = $_POST['prix_mini'];
   $prix_max= $_POST['prix_max'];
   $nb_personne = $_POST['nb_personne'];
    $response = $bdd->query('SELECT nom,localisation, bien_description,prix_basse_saison,personne_max,chemin_photo FROM bien WHERE prix_basse_saison <= '.$prix_max.' AND personne_max >= '.$nb_personne.'');
   
   while ($donnees = $response->fetch()){
       echo '<div>';
       echo $donnees['nom'];
       echo $donnees['localisation'];
       echo '  pour ' .$donnees['personne_max'].'max  ';
       echo $donnees['prix_basse_saison'];
       echo '<img src="'.$donnees['chemin_photo'].'" alt="">';
       echo'</div>';
   }
$response->closeCUrsor();
   }
   ?> 

</body>
</html>