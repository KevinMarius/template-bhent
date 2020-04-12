<?php get_header(); ?>
    <?php if($thumbnail_html = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'thumbnail')) :
    $thumbnail_src = $thumbnail_html['0'];?><br>
<header class="bh-post">
    <img src="<?php echo $thumbnail_src; ?>" alt="" class="figure img-responsive col-md-10 bh-post-image">
        <?php endif; ?>
        <div class="container">
        <br><br>
            <div class="row">
                <div class="col-md-10 ti-sin-pro"><strong><?php the_title(); ?></strong></div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-10 con-sin-pro"><strong><?php the_excerpt(); ?></strong></div>
            </div>
            <br><br><br>
            <div class="row">
                <div class="col-md-12 au-sin-pro">publie par <strong><a href="<?php the_permalink(); ?>"><img class="img-autho" src="<?php bloginfo('template_directory');?>/assets/images/author-40.png" alt="">  <?php the_post(); the_author(); ?></a></strong> | le <strong><?php echo get_the_date(); ?></strong> | <strong><a href="<?php the_permalink(); ?>"><?php echo get_the_category_list(', '); ?></a></strong></div>
            </div>
        </div>
    </figure>
</header>
<section><br><br><br><br><br>
    <div class="container">
        <div class="row ins">
            <div class="col-md-10 desc">
                <span>
                    <?php the_content(); ?>
                </span>
            </div>
        </div>
    </div><br>
    <div class="container">
        <div class="comments-template"> <?php comments_template(); ?> </div>
    </div>
</section>

<?php get_footer(); ?>
</body>
</html>