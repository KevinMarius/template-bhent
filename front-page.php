<?php get_header(); ?>
    <?php 
       $req_blog = array(
        'post_type'     => 'post',
        'posts_per_page' => 4,
        );
        $query = new WP_Query( $req_blog );
    ?>
<section>
    <div>
        <div class="trai entete"><br><br>
        <?php //searchform_template(); ?>
        <header>
            <h1>Welcome to us platform :-)</h1>
            <p class="paraph">le numerique au bout des doigts...</p><br>
        </header>
        </div><br>
    </div>
</section>
<?php get_footer(); ?>