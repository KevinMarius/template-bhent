<?php get_header(); ?>
<section>
    <div><br><br>
        <div class="trai entete">
        <header>
            <h1></h1>
            <p class="paraph"></p><br><br>
        </header>
        </div><br>
        <main>
        <?php if (have_posts()): while(have_posts()): the_post();?>
            <?php get_template_part('content', ) ?>
        <?php endwhile; else: echo ('Aucun post disponibles'); endif; ?>
        </main>
    </div><br><br>
    <div class="container paNa">
      <div class="row">
      </div>
    </div>
</section>
<?php get_footer(); ?>
