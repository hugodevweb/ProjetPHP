<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <link href="../style/main.css" rel="stylesheet">
    <link href="../style/ConfigPc.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head> 
 <body>
  <!-- -----------Premiere ligne du navbar------ -->
  <header>
    <div class="header-main">scr
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item" href="#">
        <img id="logo" src="../images/diggit.png" width="200px" height="auto" alt="Bulma logo" >
        </a>

                    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false">
                        <span aria-hidden="true"></span>
                        <span aria-hidden="true"></span>
                        <span aria-hidden="true"></span>
                    </a>
                </div>
                <div class="navbar-menu">
                    <div class="navbar-start">
                        <div class="navbar-item has-text-centered">
                            <div class="field has-addons">
                                <div class="control">
                                    <input id="rech" class="input" type="text" placeholder="Chercher un composant ">
                                </div>
                                <div class="control">
                                    <button class="button" type="submit"><img type="sub" class="loupe"
                                            src="../images/loupe.png" alt="loupe"></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="navbar-end">
                        <div class="navbar-item has-text-centered">
                            <div class="buttons">
                                <button class="button is-dark">
                                    <span class="icon">
                                        <i class="fa fa-user"></i>

                                    </span>
                                    <span>Mon compte</span>
                                </button>
                                <button class="button is-white">
                                    <span class="icon has-text-dark">
                                        <img src="../images/cart.gif" alt="cart">

                                    </span>
                                    <span href="">Panier</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>

        <!-- -----------Deuxieme ligne du navbar------ -->

  <div class="header-secondary">
  <nav class="secondary-navbar">
    <div class="container">
     
  
  <div id="secondaryNavbar" class="navbar-menu">
    <div class="navbar-start" style="margin-left: 8vw;">
      <a class="navbar-item" href="../iindex.php" style="border-left: 1px solid white;">
        Acceuil
      </a>
  
      <a class="navbar-item" href="CréationPc.php">
        Creer une configuration
      </a>
  
      <a class="navbar-item" href="#">
        Communauté
      </a>
  
      <a class="navbar-item" href="#">
        A propos
      </a>
    </div>
  </div>
    
  </div>
    </div>
  </nav>
  </header>
  <!----contenu---->
  <section class="hero " style="background: url('.//images/gradient.gif') center/cover no-repeat;" >
    <div class="hero-body" >
        <div class="container" >
            <h1 class="title has-text-black">
                Bienvenue sur digit.me 
            </h1>
            <h2 class="subtitle has-text-black">
               Votre configurateur de PC personnalisé
            </h2>
            <!-- <img class="is-right" src="../images/pc.gif" style="width: 250px ;height:200px;"> -->
        </div>


    </div>
</section>

<!---------------------Création pc--------------------------------->
<?php 
       session_start();
       $compteur = 1;
       $bdd = new PDO('mysql:host=localhost;dbname=diggit.me', 'root', '');
    
       $sql = "SELECT * FROM composants_board where id_comp = $compteur";
       $req = $bdd->prepare($sql); 
       $req ->execute();
      ?>
      
<div class="columns"> <div class="column"></div>
  <div class="column is-two-thirds">Choissisez votre carte mere</div>
  <div class="select is-rounded">
<div class="select is-link">
<select>
<option></option>
<?php while($donne = $req -> fetch())
{
  $_SESSION['res']= $donne['id_comp'];
  echo "<option>".$donne['name']."</option> ";
  $compteur = $compteur + 1;
  $sql = "SELECT name FROM composants_board where id_comp = $compteur";
  $req = $bdd->prepare($sql); 
       $req ->execute();
}
?>
</select>
</div>

<?php 
session_start();
$compteur = 1;
$bdd = new PDO('mysql:host=localhost;dbname=diggit.me', 'root', '');

$sql = "SELECT * FROM composants_board where id_comp = $_SESSION['res'];";
$req = $bdd->prepare($sql); 
$req ->execute();
 ?>
</div>

  <div class="column"></div>
</div>
<div class="columns"> <div class="column"></div>
  <div class="column is-two-thirds">Choissisez votre carte graphique</div>
  <div class="select is-rounded">
<div class="select is-link">
  <select>
    <option> carte graphique</option>
    <option> carte graphique 1 </option>
    <option> carte graphique 2 </option>
  </select>
</div>
</div>
  <div class="column"></div>
</div>
<div class="columns"> <div class="column"></div>
  <div class="column is-two-thirds">Choissisez votre stockage</div>
  <div class="select is-rounded">
<div class="select is-link">
  <select>
    <option> carte mere </option>
    <option> carte mere 1 </option>
    <option> carte mere 2 </option>
  </select>
</div>

</div>
  <div class="column"></div>
</div>
<div class="columns"> <div class="column"></div>
  <div class="column is-two-thirds">Choissisez votre RAM</div>
  <div class="select is-rounded">
<div class="select is-link">
  <select>
    <option> carte mere </option>
    <option> carte mere 1 </option>
    <option> carte mere 2 </option>
  </select>
</div>

</div>
  <div class="column"></div>
</div>
<div class="columns"> <div class="column"></div>
  <div class="column is-two-thirds">Choissisez votre Alimentation</div>
  <div class="select is-rounded">
<div class="select is-link">
  <select>
    <option> carte mere </option>
    <option> carte mere 1 </option>
    <option> carte mere 2 </option>
  </select>
</div>

</div>
  <div class="column"></div>
</div>
<div class="columns"> <div class="column"></div>
  <div class="column is-two-thirds">Choissisez votre Carte réseau</div>
  <div class="select is-rounded">
<div class="select is-link">
  <select>
    <option> carte mere </option>
    <option> carte mere 1 </option>
    <option> carte mere 2 </option>
  </select>
</div>

</div>
  <div class="column"></div>
</div>



    <!-------------Footer-------------->
    <div class="footer">
        <div class="container">
            <div class="rang">
                <div class="footer_col1">
                    <h3>Télécharger notre application</h3>
                    <p>Télécharger notre application maintenant sur Android et IOS</p>
                    <div class="app_logo">
                        <a href="https://play.google.com/store/search?q=footprint"><img class="playstr"
                                src="../images/playstore.png"></a>
                        <a href="https://www.apple.com/fr/ios/app-store/"><img class="appstr"
                                src="../images/appstore.png"></a>
                    </div>
                </div>
                <div class="footer_col2">
                    <img src="../images/diggit.png">
                    <p>Notre objectif est de rendre agréable et accessible l'achat et le montage d'ordinateurs
                    </p>
                </div>
                <div class="footer_col3">
                    <h3>Suivez-nous</h3>
                    <ul>
                        <li><a href="https://www.instagram.com/">Instagram</a></li>
                        <li><a href="https://www.twitter.com/">Twitter</a></li>
                        <li><a href="https://www.Facebook.com/">Facebook</a></li>
                        <li><a href="https://www.youtube.com/">youtube</a></li>




                    </ul>

                </div>
            </div>
            <hr>
            <p class="copyright">Copyright 2022 - DIGIT.ME</p>
        </div>
    </div>
</body>

</html>