<?php get_header(); ?>
<section class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                <h2 class="mb-4"><?php the_title(); ?></h2>
                </div>
            </div>
            <?php if (have_posts()): ?>
            <div class="row blog-entries">
                <div class="col-md-12 col-lg-8 main-content">
                    <div class="row">
                        <?php while(have_posts()): the_post();?>
                        <div class="col-ml-2" style="width: 24rem; height:38rem">
                            <?php if($thumbnail_html = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'thumbnail')) :
                                    $thumbnail_src = $thumbnail_html['0'];
                                    ?>
                                <img class="img-responsive img-thumbnail" class="col-xs-2" src="<?php echo $thumbnail_src; ?>" alt="">
                            <?php endif; ?>
                                <div class="blog-content-body">
                                    <div class="post-meta">
                                        <span class="mr-2 pp"><?php echo bhkev_give_me_meta(esc_attr(get_the_date('c')), esc_html(get_the_date()), get_the_category_list(' , '), get_the_tag_list('', ' , ')) ?></span> &bullet;
                                        <span class="mr-2 pp"><p ><?php the_content(); ?></p> </span>
                                    </div>
                                    <h2><?php the_title(); ?></h2>
                                </div>
                        </div>
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