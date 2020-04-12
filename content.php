<div class="singleBlog">
<?php if($thumbnail_html = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'thumbnail')) :
            $thumbnail_src = $thumbnail_html['0'];?>
    <img class="img-responsive img-thumbnail" src="<?php echo $thumbnail_src; ?>" alt="">
    <?php endif; ?>
    <div class="blogContent">
        <h3><?php the_title(); ?> <span><?php  ?></span></h3>
        <p><img class="img-autho" src="<?php bloginfo('template_directory');?>/assets/images/author-40.png" alt=""> <strong><a href=""><?php the_author(); ?> </a> | <a href=""><?php the_time('j F, Y'); ?></a> | <a href="" class="icofont-comment"></a></strong></p>
        <a href="<?php the_permalink(); ?>" class="btn">Read more</a>
        <br><br>
    </div>
</div>