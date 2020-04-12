<?php get_header(); ?>
<section>
  <div class="trai entete"><br><br>
    <header>
        <h1>Search results " "</h1>
        <p class="paraph"></p><br><br>
    </header>
  </div><br>
  <div class="container">
    <main>
    <?php if (have_posts()): while(have_posts()): the_post();?>
        <?php //get_template_part('content', ) ?>
    <?php endwhile; else: echo ('Aucun post disponibles'); endif; ?>
    </main>
  </div><br><br>
    <?php require('includes/page-navi.php') ?>
</section><br>

<?php get_footer(); ?>