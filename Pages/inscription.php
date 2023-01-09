<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="../style/main.css" rel="stylesheet">
 <link href="../style/login.css" rel="stylesheet">
 </head>
    <title>Création d'un compte</title>
</head>
<body>
<div class="background--custom">
      
      <header>
         <div class="header-main" style="background-color: unset;">
         <nav class="navbar" style="background-color: unset;left:5vw;" role="navigation" aria-label="main navigation">
           <div class="navbar-brand">
             <a class="navbar-item" href="../index.php">
             <img id="logo" src="../images/diggit.png" width="400px" height="auto" alt="Bulma logo" >
             </a>
     </header>
     <canvas id="canvas" />
         
         </div>
         <script src="https://cdn.jsdelivr.net/gh/greentfrapp/pocoloco@minigl/minigl.js"></script>

    <div class ="container_inscription">
            
            <form class = "form_inscription" action="inscription_action.php" method="POST">
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
                </form>
                
                
        </div>
        
      

    </div>
    <script src="../scripts/login.js"></script>
</body>
</html>