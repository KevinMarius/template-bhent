<div class="col-12 col-sm-6 col-md-4 mb-3" style="width: 18rem; height:25rem">
    <div class="card">
    <?php if($thumbnail_html = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'thumbnail')) :
            $thumbnail_src = $thumbnail_html['0'];?>
        <img class="img-responsive img-thumbnail imgr" src="<?php echo $thumbnail_src; ?>" alt="">
        <?php endif; ?>
        <div class="card-block">
            <a href="<?php the_permalink(); ?>"><h3 class="card-title"><?php the_title(); ?></h3></a>
            <p class="text pp"><?php get_the_excerpt(); ?></p>
        </div>
    </div>
    <div class="card-footer">
        <small class="text-muted"><p class="pp">publie le <?php echo get_the_date(); ?> </p>| <?php the_category('. '); ?> | <p class="pp"><?php the_author(); ?></p></small>
    </div>
</div>
