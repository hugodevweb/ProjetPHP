<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <link href="../style/main.css" rel="stylesheet">
    <link href="../style/index.css" rel="stylesheet">
    <link href="../style/fondsvg.css" rel="stylesheet">
    <link href="../style/newcompo.css" rel="stylesheet">
    <link rel = "icon" href = "../images/logo_diggit.png" 
        type = "image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>DIGGIT.ME- Ajout composant</title>
</head>
<body>
  <?php
    session_start();
   
    
    ?>
  <!-- -----------Premiere ligne du navbar------ -->
  <header>
    
    <div class="header-main">
      <nav class="navbar" role="navigation" aria-label="main navigation">
        
        <div id="nav_menu1" class="navbar-menu">

       
          <div class="navbar-brand">
          <a class="navbar-item" href="./index.php">
            <img id="logo" src="../images/diggit.png" width="200px" height="auto" alt="Bulma logo">
          </a>
</div>   <div class="navbar-start">
            <div class="navbar-item has-text-centered">
            
              <form>
                <div class="field has-addons">
                  <div class="dropdown-trigger">
                    <div class="cont">
                      <div class="control">
                        <input id="rech" class="input" type="text" placeholder="Chercher un composant">
                      </div>
                      <div class="control">
                        <button id="rechbtn" class="button" type="submit"><img type="sub" class="loupe"
                            src="../images/loupe.png" alt="loupe"></button>
                      </div>
                      <div class="dropdown" id="search-results-dropdown">
                        <div class="dropdown-menu2" id="dropdown-menu" role="menu">
                          <div class="dropdown-content2" id="search-results">
                            <!-- Les résultats de la requête seront ajoutés ici -->
                          </div>
                        </div>
                      </div>
                    </div>
              </form>
            </div>

          </div>


        </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item has-text-centered">
        <?php
                        if(isset($_SESSION['mail'])) {
                            echo'<div class="dropdown">
                            <div class="dropdown-trigger">
                                <button id="btn" class="button is-dark">
                                    <span class="icon">
                                        <i class="fa fa-user"></i>

                                    </span>
                                    <span>Mon compte</span>
                                </button>
                            </div>
                            <div class="dropdown-menu is-dark" id="dropdown-menu4" role="menu">
                                <div class="dropdown-content">
                                    
                                    <a href="#" class="dropdown-item">
                                        Mon compte
                                    </a>
                                    <a href="#" class="dropdown-item">
                                        Mes configurations
                                    </a>';

                                    if($_SESSION['statut']=='A'){
                                      echo'<a href="../Pages/new_compo.php" class="dropdown-item">+ Composants 
                                  </a>';}
                                  echo'
                                    <hr class="dropdown-divider">
                                    <a href="../Pages/deconnexion.php" class="dropdown-item">
                                        Se Deconnecter
                                    </a>
                                </div>
                            </div>
                        </div>
                        <button style="margin-left:2%" id="btnpanier" class="button is-white">
                            <span class="icon has-text-dark">
                                <img src="../images/cart.gif" alt="cart">

                            </span>
                            <span href="">Panier</span>
                        </button>
                    
                </div>';
                        } else {
                            echo '
                            <div class="dropdown">
                                <div class="dropdown-trigger">
                                    <button id="btn" class="button is-dark" data-target="#modal-id" data-toggle="modal">
                                        <span  class="icon">
                                            <i class="fa fa-user"></i>
                                        </span>
                                        <p> Se Connecter</p>
                                    </button>
                                </div>
                                <div class="modal" id="modal-id">
                                    <div class="modal-background"></div>
                                    <div class="modal-content">

                                        <div id="container">

                                            <form class="form_compte" action="./Pages/connexion_action.php" method="POST">
                                                <h1>Se connecter</h1>

                                                <div class="field">
                                                    <label class="label">Votre Email</label>
                                                    <div class="control">
                                                        <input class="input" name="mail" type="email"
                                                            placeholder="Votre email">
                                                    </div>
                                                </div>

                                                <div class="field">
                                                    <label class="label">Votre mot de passe</label>
                                                    <div class="control">
                                                        <input class="input" name="mdp" type="password"
                                                            placeholder="Votre mot de passe">
                                                    </div>
                                                </div>



                                                <p><a href="https://www.google.com">Mot de passe oublié ?</a></p>

                                                <input type="submit" name="envoi" class="bouton_connexion"
                                                    value=" Connexion">
                                            </form>
                                        </div>

                                        
                                        <button class="modal-close is-large" aria-label="close"></button>
                                    </div>

                                </div>
                                <button id="btn2" class="button is-white" style="margin-left:2%" data-target="#modal-id-2" data-toggle="modal">
                                    <span class="icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <p>S\'inscrire</p>
                                </button>
                            </div>
                            <div class="modal" id="modal-id-2">
                                <div class="modal-background"></div>
                                    <div class="modal-content">
                                    <div class ="container_inscription">
            
            <form class = "form_inscription" action="./Pages/inscription_action.php" method="POST">
            <h1>Mon inscription</h1>
                <div class="field">
                <label class="label">Votre Email</label>
                    <div class="control">
                      <input class="input" name="mail" type="email" placeholder="Votre email">
                    </div>
                </div>

                <div class="field">
                  <label class="label">Votre mot de passe</label>
                    <div class="control">
                      <input class="input"  name="mdp" type="password" placeholder="Votre mot de passe">
                    </div>
                </div>

                <div class="field">
                  <label class="label">Confirmer votre mot de passe</label>
                    <div class="control">
                      <input class="input"  name="confirm_mdp" type="password" placeholder="Votre mot de passe">
                    </div>
                </div>

                <div class="field">
                  <label class="label">Pseudo</label>
                      <div class="control">
                        <input class="input" name="pseudo" type="text" placeholder="Votre pseudo">
                      </div>
                  </div>
                  
                 
                  <div class="field">
                  <label class="label">Nom</label>
                      <div class="control">
                        <input class="input" name="nom" type="text" placeholder="Votre email">
                      </div>
                  </div>

                  <div class="field">
                    <label class="label">Prénom</label>
                      <div class="control">
                        <input class="input" name="prenom" type="text" placeholder="Votre mot de passe">
                      </div>
                  </div>


                    <div class="field">
                       
                        <div class="control">
                            <label class="radio">
                                <input type="radio" name="genre" value="Homme">
                                Homme
                            </label>
                            <label class="radio">
                                <input type="radio" name="genre" value="Femme">
                                Femme
                            </label>
                        </div>
                  

                  <div class="field">
                    <label class="label">Numéro de télephone</label>
                      <div class="control">
                        <input class="input" name="tel" type="tel" placeholder="Votre mot de passe">
                      </div>
                  </div>

                  <div class="field">
                    <label class="label">Adresse</label>
                      <div class="control">
                        <input class="input" name="adresse" type="text" placeholder="Votre mot de passe">
                      </div>
                  </div> 


                  
                  <div class="columns">
                    <div class="column is-two-fifths">
                        <label class="label">Code postal</label>
                        <div class="control">
                          <input class="input" name="codepostal" type="text" placeholder="Code postal">
                        </div>
                    </div>
                    <div class="column"></div>
                    <div class="column is-two-fifths"><label class="label">Ville</label>
                        <div class="control">
                          <input class="input" name="ville" type="text" placeholder="Ville">
                        </div>
                    </div>
                    
                 
            </div>
    
    
      
    <div id="btn_inscription" class="field">
    <button style="all: unset;"type="submit"><a class="fancy" >
    <span class="top-key"></span>
    <span class="text">S\'inscrire</span>
    <span class="bottom-key-1"></span>
    <span class="bottom-key-2"></span>
  </a>   </button>
       </div>
  </div> 
                </form>
                
    
                                    </div>
                                <button class="modal-close is-large" aria-label="close"></button>
                            </div>';
                        }
                        ?>
      </div>

    </div>
    </nav>
    </div>
    <!-- -----------Deuxieme ligne du navbar------ -->

    <div class="header-secondary">
      <nav class="secondary-navbar">
        <div class="container">


          <div id="secondaryNavbar" class="navbar-menu">
            <div class="navbar-start" >
            <a class="navbar-item" href="../index.php" style="border-left: 1px solid white;">
                Accueil
              </a>

              <a class="navbar-item" href="./CréationPc.php">
                Creer une configuration
              </a>

              <a class="navbar-item" href="./commu.php">
                Communauté
              </a>

              <a class="navbar-item" href="./a_propos.php">
                A propos
              </a>
            </div>
          </div>

        </div>
    </div>
    </nav>
  </header>
  <!----header---->



        

    <!---------------------ajout composant--------------------------------->


    <section class="hero">
        <div class="background--custom">

            
        <div id="pres" class="box has-text-centered has-background-white ">
            <h1 style="font-family: 'Montserrat', sans-serif;" class="title is-2">Completer le formulaire ci-dessous:
            </h1>
            <form action="./new_compo_action.php" id="form_composants" method="post">


                <div class="field">

                    <div class="control ">
                        <label for="type" class="choixtype"><b>Type de composant:</b></label>
                        <div class="select">
                            <select  name="type" id="type" onchange="showDiv()">
                                <option value="erreur_choix_composant" selected>Choisir</option>
                                <option value="cooler">Refroidissement de CPU</option>
                                <option value="stockage">Stockage</option>
                                <option value="board">Carte mère</option>
                                <option value="alim">Alimentation</option>
                                <option value="gpu">Carte Graphique</option>
                                <option value="boiter">Un boitier</option>
                                <option value="cpu">Un processeur</option>
                                <option value="RAM">RAM</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="field">
                    <label for="name"><b class="is-pulled-left">Nom du composant:</b></label>
                    <input class="input" placeholder="Inserer le nom du composant" name="name">
                </div>
                <div class="field">
                    <label for="price"><b class="is-pulled-left">Prix:</b></label>
                    <input class="input" placeholder="Entrez le prix du composant" name="price">
                </div>
                <div class="field">
                    <label for="brand"><b class="is-pulled-left">Marque:</b></label>
                    <input class="input" placeholder="Repetez la marque" name="brand">
                </div>
                <div class="field">
                    <label for="rating"><b class="is-pulled-left">La note:</b></label>
                    <input class="input" placeholder="Entrez la note /5" name="rating">
                </div>
                <div class="field">
                    <label for="URL"><b class="is-pulled-left">L'URL :</b></label>
                    <input class="input" placeholder="L'url" name="URL">
                    <p class="has-text-grey">Utilisez le lien suivant <b>https://drive.google.com/uc?export=view&id="imageid"</b> en remplaçant  l'imageid par l'id de l'image (Vous pouvez le trouver ici : https://drive.google.com/file/d/<b>13jueBPF680fgvWnK2JImyf13PhgjsFBS</b>/view?usp=share_link ) </p>
                </div>


                <div class="field">
                    <label class="label ">
                        <h3 class="title is-4">Est-il disponible ? :</h3>
                    </label>
                    <div class="control">
                        <label class="radio">
                            <input type="radio" name="is_available" value="1">
                            Oui
                        </label>
                        <label class="radio">
                            <input type="radio" name="is_available" value="0">
                            Non
                        </label>
                    </div>
                </div>
                <hr>



                <div id="stockage" style="display: none;">
                    <div class="field">
                        <label class="label ">
                            <h3 class="title is-4">Quel est le type de stockage:</h3>
                        </label>
                        <div class="control">
                            <label class="radio">
                                <input type="radio" name="stockage_type" value="SSD">
                                Un SSD
                            </label>
                            <label class="radio">
                                <input type="radio" name="stockage_type" value="HDD">
                                Un Disque dur
                            </label>
                        </div>
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">L'espace de stockage:</b></label>
                        <input class="input" placeholder="Entrez le stockage en GB" name="stockage_taille">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">La vitesse</b></label>
                        <input class="input" placeholder="Entrez la vitesse" name="stockage_vitesse">
                    </div>

                </div>


                <!-- Div qui apparaît si l'option "board" est choisie -->


                <div id="board" style="display: none;">
                    <h3 class="title is-2">paramètres de la carte mere :</h3>

                    <div class="field">
                        <label><b class="is-pulled-left">Type de socket:</b></label>
                        <input class="input" placeholder="Entrez le type de socket" name="board_socket">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">Le nombre de slot de RAM:</b></label>
                        <input class="input" placeholder="Entrez le nombre de slot" name="board_ram">
                    </div>
                </div>
                <!-- Div qui apparaît si l'option "cooler " est choisie -->

                <div id="cooler" style="display: none;">
                    <div class="field">
                        <label class="label ">
                            <h3 class="title is-4">Quel est le type de Refroidissement ?</h3>
                        </label>
                        <div class="control">
                            <label class="radio">
                                <input type="radio" name="cooler_type" value="VentiRad">
                                Un VentiRad
                            </label>
                            <label class="radio">
                                <input type="radio" name="cooler_type" value="waterC">
                                Un Water Cooling
                            </label>
                        </div>
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">le niveau sonore</b></label>
                        <input class="input" placeholder="Entrez le niveau sonore" name="cooler_son">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">La taille </b></label>
                        <input class="input" placeholder="Entrez la taille en MM" name="cooler_taille">

                        <div class="field">
                            <label><b class="is-pulled-left">La vitesse de rotation </b></label>
                            <input class="input" placeholder="Entrez la vitesse" name="cooler_speed">
                        </div>
                    </div>
                </div>
               
                <!-- Div qui apparaît si l'option "alim" est choisie -->
                <div id="alim" style="display: none;">
                    <h3 class="title is-2">paramètres de l'alimentation' :</h3>

                    <div class="field">
                        <label><b class="is-pulled-left">Consomation:</b></label>
                        <input class="input" placeholder="Entrez la consomation en Watts" name="alim_wattage">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">Est-elle modulable ?</b></label>

                        <div class="control ">
                            <div id="module" class="select is-pulled-left">
                                <select name="is_modulable" id="is_modulable">
                                    <option value="0" selected>Non</option>
                                    <option value="2">Full</option>
                                    <option value="1">Semi-modulable</option>

                                </select>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- Div qui apparaît si l'option "gpu" est choisie -->
                <div id="gpu" style="display: none;">
                    <h3 class="title is-2">paramètres de la carte graphique :</h3>

                    <div class="field">
                        <label><b class="is-pulled-left">Fréquence</b></label>
                        <input class="input" placeholder="Entrez la  Fréquence en MHz" name="gpu_puiss">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">la RAM:</b></label>
                        <input class="input" placeholder="Entrez la ram du gpu" name="gpu_ram">
                    </div>

                </div>
                <!-- Div qui apparaît si l'option "boiter" est choisie -->
                <div id="boiter" style="display: none;">
                    <h3 class="title is-2">paramètres du boiter :</h3>

                    <div class="field">
                        <label><b class="is-pulled-left">Type de boitier</b></label>
                        <input class="input" placeholder="Entrez la norme du boitier" name="boiter_type_case">
                    </div>

                </div>
                <!-- Div qui apparaît si l'option "cpu" est choisie -->
                <div id="cpu" style="display: none;">
                    <h3 class="title is-2">paramètres du CPU :</h3>

                    <div class="field">
                        <label><b class="is-pulled-left">Puissance:</b></label>
                        <input class="input" placeholder="Entrez la  puissance" name="cpu_puiss">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">Le nombre de Cores:</b></label>
                        <input class="input" placeholder="Entrez le nombre de cores" name="cpu_nbr_core">
                    </div>
                    <div class="field">
                        <label><b class="is-pulled-left">La consomation:</b></label>
                        <input class="input" placeholder="Entrez la consommation en W" name="cpu_conso">
                    </div>
                </div>

                    <!-- Div qui apparaît si l'option "RAM" est choisie -->


                    <div id="RAM" style="display: none;">
                    <h3 class="title is-2"></h3>

                    <div class="field">
                        <label><b class="is-pulled-left">Type de mémoire :</b></label>
                        <input class="input" placeholder="Entrez le type de mémoire" name="RAM_memoire">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">Le capacité de la RAM :</b></label>
                        <input class="input" placeholder="Entrez la capacité" name="RAM_capacite">
                    </div>

                    <div class="field">
                        <label><b class="is-pulled-left">Fréquence mémoire :</b></label>
                        <input class="input" placeholder="Entrez la fréquence mémoire" name="RAM_fréquence">
                    </div>
                </div>
                <button type="submit" class="button is-info is-medium is-fullwidth">Ajouter +</button>



            </form>
            <!-------------Message succès-------------->
            <div class="notification is-success" id="msg_success">
                Le composant a été ajouté avec succes !
            </div>
            <div class="notification is-danger" id="msg_error">
                Le composant n'a pas été ajouté !
                <div id="errors"></div>

            </div>
        </div>
   
      
        
    </div>
    </section>
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
    <script src="../scripts/newcompo.js"></script>
    <script src="../scripts/index.js"></script>
  <script src="../scripts/main.js"></script>
  <script src="../scripts/recherche2.js"></script>
  <script src="../scripts/like.js"></script>
</body>

</html>