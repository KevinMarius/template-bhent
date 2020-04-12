<?php get_header(); ?>
<section>
    <div>
        <div class="trai entete"><br><br>
        <header>
            <h1><?php single_cat_title('', true); ?></h1>
            <p class="paraph">Archives de la categorie presente ci-dessus </p><br><br>
        </header>
        </div><br>
        <div class="container">
            <main>
                <?php if (have_posts()): while(have_posts()): the_post();?>
                <?php get_template_part('content', ) ?>
                <?php endwhile; else: echo ('Aucun post disponibles'); endif; ?>
            </main>
        </div>
        <?php require('includes/page-navi.php') ?>
    </div>
</section><br><br>
<?php get_footer(); ?>