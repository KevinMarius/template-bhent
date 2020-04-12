<footer>
    <div class="container">
        <div class="row">
            <?php  if(is_active_sidebar('widgetized-footer')): ?>
                <?php dynamic_sidebar('widgetized-footer'); ?>
            <?php endif ?>
        </div>
    </div>
        <div><a id="cRetour" class="cInvisible" href="#haut"></a></div>
</footer>
<div id="preloader">
    <div id="loader">
        <div class="line-scale">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
</div>
<div class="blog-footer"> 
    <p class="pp"> Copyright &#169; <?php print(date('Y')); ?><strong>
        <?php bloginfo('name'); ?> <br /> Blog propulsé par 
        <a href="http://wordpress.org/">WordPress</a> et con&ccedil;u par 
        <a href="http://www.bhent.net">Kevin.</a> <br /> 
        </strong>
    </p> 
</div>
<?php wp_footer(); ?>
</body>
</html>