<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset') ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo('name'); ?></title>
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
</head>
<body>
<section class="header" id="header">
<nav class="navbar navbar-expand-md navbar-light bg-dark" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <a class="navbar-brand text-light" href="<?php bloginfo('url'); ?>">LOGO<h1><?php bloginfo('name') ?></h1></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

        <?php
        //------- creation du menu via wp-bootstrap-navwalker--------
        wp_nav_menu( array(
            'theme_location'    => 'primary',
            'depth'             => 3,
            'container'         => 'div',
            'container_class'   => 'collapse navbar-collapse',
            'container_id'      => 'navbarSupportedContent',
            'menu_class'        => 'nav navbar-nav ml-auto navbar-right text-light',
            'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
            'walker'            => new WP_Bootstrap_Navwalker(),
        ) );
        ?>
    </div>
</nav>
</section>