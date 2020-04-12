<?php get_header(); ?>
<section>
  <div class="trai entete"><br><br>
    <header>
        <h1>Latest post</h1>
        <p class="paraph">the last post present in this platform</p><br><br>
    </header>
  </div><br>
  <div class="container">
    <main>
    <?php if (have_posts()): while(have_posts()): the_post();?>
        <?php get_template_part('content', ) ?>
    <?php endwhile; else: echo ('Aucun post disponibles'); endif; ?>
    </main>
  </div><br><br>
    <div class="container paNa"> 
    <?php require('includes/page-navi.php') ?>
    </div>
</section><br>
<?php get_footer(); ?>
