<?php get_header(); ?>
<section class="main">
<div class="container my-5">
    <div class="row">
        <?php if (have_posts()): while(have_posts()): the_post();?>
            <?php get_template_part('content' ); ?>
        <?php endwhile; else: echo ('aucun resultats'); endif; ?>
    </div>
</div>
</section>

    <?php get_footer(); ?>
</body>
</html>