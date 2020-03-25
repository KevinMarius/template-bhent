<?php get_header(); ?>
    <?php 
       $req_pag = array(
        'post_type'     => 'post',
        'post_per_page' => 4,
        );
        $query = new WP_Query( $req_pag );
    ?>

    <?php if($req_pag->have_posts()): ?>
        <?php while($req_pag->have_posts()) : $req_pag->the_post(); ?>
        <?php endwhile; ?>
    <?php endif; ?>
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