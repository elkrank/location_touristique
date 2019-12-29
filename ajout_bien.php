<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <?php require ('bdd.php');
        
    ?>
</head>
<body>
<h1>ajouter un bien</h1>
    <form action=""method="POST"  enctype="multipart/form-data">
    <label for="">NOM</label>
    <input type="text" name="bien_nom" id="">
    <label for="">LOCALISATION</label>
    <input type="text" name="bien_localisation">
    <label for="">nombre max de personne</label>
    <input type="number" name="bien_personne_max" id="">
    <label for=""description></label>
    <textarea name="bien_description"></textarea>
    <label for="">PRIX BASSE SAISON</label>
    <input type="number" name="bien_prix_basse_saison" id="">
    <label for="">PRIX HAUTE SAISON</label>
    <input type="number" name="bien_prix_haute_saison" id="">
    <input type="file" name="photo" id="">
    <input type="submit" value="ajouter">
    </form>

<?php
if(isset($_POST['bien_nom'])&&
    isset($_POST['bien_localisation'])&&
isset($_POST['bien_personne_max'])&&
isset($_POST['bien_description'])&&
isset($_POST['bien_prix_basse_saison'])&&
isset($_POST['bien_prix_haute_saison'])){
    require ('upload_img.php');
    $req= $bdd->prepare('INSERT INTO bien(nom,localisation,personne_max,prix_basse_saison,prix_haute_saison,bien_description, chemin_photo ) VALUES(:nom,:localisation,:personnes_max,:prix_basse_saison,:prix_haute_saison,:bien_description,:chemin_photo)');

    $req->execute(array(
        'nom' => $_POST['bien_nom'],
        'localisation'=>$_POST['bien_localisation'],
        'personnes_max'=>$_POST['bien_personne_max'],
        'prix_basse_saison'=>$_POST['bien_prix_basse_saison'],
        'prix_haute_saison'=>$_POST['bien_prix_haute_saison'],
        'bien_description'=>$_POST['bien_description'],
        'chemin_photo'=> $target_file
    ));
    echo 'le bien est ajouté ! ';

}

?>
</body>
</html>