<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset') ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="mon theme">

    <?php if(is_home()): ?>
        <meta name="description" content="ce site presente la page des articles du blog">
    <?php endif; ?>
    <?php if(is_front_page()): ?>
        <meta name="description" content="ce site presente une page d'accueil statique">
    <?php endif; ?>
    <?php if(is_page() && !is_front_page()): ?>
        <meta name="description" content="ce site presente un contenu de type page">
    <?php endif; ?>
    <?php if(is_category()): ?>
        <meta name="description" content="liste des articles pour la categorie <?php echo single_cat_title('', false); ?>">
    <?php endif; ?>
    <?php if(is_tag()): ?>
        <meta name="description" content="liste des articles relies avec l'etiquette <?php echo single_tag_title('', false); ?>">
    <?php endif; ?>

    <?php wp_head(); ?>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            window.onscroll = function(ev) {
                document.getElementById("cRetour").className = (window.pageYOffset > 100) ? "cVisible" : "cInvisible";
            };
        });
    </script>
</head>
<body id="haut">
<section class="header" id="header">
<nav class="navbar navbar-expand-md navbar-light txt" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <a class="navbar-brand text-light" href="<?php bloginfo('url'); ?>">LOGO<h1><?php bloginfo('name') ?></h1></a>
    <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon btn-default"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <div class="sea ml-auto"><form method="get" id="searchform" action="<?php bloginfo('home'); ?>/"> <div> <input type="text" placeholder="Rechercher" value="<?php the_search_query(); ?>" name="s" id="s" /><button type="submit" class="searchsubmit"><i class="fas fa-search"></i></button> </div> </form></div>

        <ul class="nav navbar-nav ml-auto navbar-right menus">
            <?php wp_list_pages("depth=1&title_li="); ?><br>
        </ul>
    </div>
    </div>
</nav>
</section>
<div id="progress"></div>