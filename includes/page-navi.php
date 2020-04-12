
<div class="row">
    <?php global $wp_query;
        $big = 999999999;
        $total_pages = $wp_query->max_num_pages;
        
        if($total_pages > 1): ?>
          <div class="col-xs-12 bhkev-pagina">
            <?php 
                echo paginate_links( array(
                'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big))),
                'format' => '/page/%#%',
                'current' => max(1, get_query_var('paged')),
                'total' => $total_pages,
                'prev_next' => True,
                'prev_text' => '<',
                'next_text' => '> '
            ));?>
            </div>
        <?php endif; ?>
</div>