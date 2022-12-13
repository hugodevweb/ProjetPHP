<?php
 if(isset($_GET['erreur'])){
 $err = $_GET['erreur'];
 if($err==1 || $err==2)
 echo "<p style='color:red'>Utilisateur ou mot de passe incorrect</p>";
 }
 ?>


<html>
 <head>
 <meta charset="utf-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="../style/main.css" rel="stylesheet">
 </head>
 <body>

 <header>
    <div class="header-main">
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item" href="#">
        <img id="logo" src="../images/diggit.png" width="200px" height="auto" alt="Bulma logo" >
        </a>
</header>

 <div id="container">
 
 <form action="connexion_action.php" method="POST">
 <h1>Se connecter</h1>
 
 <div class="field">
  <label class="label">Votre Email</label>
  <div class="control">
    <input class="input" type="email" placeholder="Votre email">
  </div>
</div>

<div class="field">
  <label class="label">Votre mot de passe</label>
  <div class="control">
    <input class="input" type="passworld" placeholder="Votre mot de passe">
  </div>
</div>



 <p><a href="https://www.google.com">Mot de passe oublié ?</a></p>


 <button class="bouton_connexion"> Connexion </button>
 </form>
 </div>

 <div class="container2">
 <h1>Nouveau client ?</h1>
 <a href="../Pages/inscription.php">
        <input type="button" class="bouton_creer_un_compte" value=" Creer un compte">
    </a>



 </body>
</html>

