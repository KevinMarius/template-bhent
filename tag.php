<?php get_header(); ?>
<section class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2 class="mb-4">Articles ayant pour etiquette: <?php the_tags(' '); ?></h2>
                </div>
            </div>
            <?php if (have_posts()): ?>
            <div class="row blog-entries">
                <div class="col-md-12 col-lg-8 main-content">
                    <div class="row">
                        <?php while(have_posts()): the_post();?>
                            <?php get_template_part('content', ) ?>
                        <?php endwhile; ?>
                    </div>
                                                    <!-- END main-content -->
                </div>
            </div>
            <?php else: echo ('aucun resultat'); endif; ?>
        </div>
    </section>


    <?php get_footer(); ?>
</body>
</html>