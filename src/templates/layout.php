<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Encore un Blog ?! #nonMaisAllo</title>

    <!-- Feuilles de style externes -->
    <link rel="stylesheet" href="css/normalize-3.0.3.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans">

    <!-- Feuilles de style de l'application -->
    <link rel="stylesheet" href="css/blog-main.css">
    <link rel="stylesheet" href="css/blog-theme.css">
    <link rel="stylesheet" href="css/ui-button.css">
    <link rel="stylesheet" href="css/ui-form.css">
    <link rel="stylesheet" href="css/style.css">
</head>

    <!-- En-tête commune de l'application -->
    <header class="blog-header">
        <h1><a href="index.php"><i class="fa fa-microphone"></i> Le blog du gamer !</a></h1>
        <nav>
            <a href="admin.php"><i class="fa fa-cogs"></i> Administration</a>
        </nav>
    </header>
    <body>
    <main>
        <!-- Chargement du template PHTML spécifié par le programme PHP -->
        <?php include 'templates/'.$template.'.php' ?>
    </main>

    <!-- Pied de page commun de l'application -->
    <footer class="blog-footer">
        <small>Le blog du gamer</small>
    </footer>
</body>
</html>