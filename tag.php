<?php get_header(); ?>
<section>
    <div>
        <div class="trai entete">
        <header>
            <h1><?php the_tags(''); ?></h1>
            <p class="paraph">Liste d'article ayant les etiquettes ci-dessus! </p><br><br>
        </header>
        </div><br>
        <main>
        <?php if (have_posts()): while(have_posts()): the_post();?>
        <?php get_template_part('content', ) ?>
        <?php endwhile; else: echo ('Aucun post disponibles'); endif; ?>
        </main>
    </div>
</section>
<?php get_footer(); ?>