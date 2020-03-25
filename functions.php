<?php

//=========================== chargement des scripts et styles ============================
define('VERSION', '1.0.0');

function bhkev_scripts() {
    wp_enqueue_script('bhkev_bootstrap_bundle_js', get_template_directory_uri() . '/assets/js/bootstrap.bundle.min.js', array('jquery'), VERSION, false );
    wp_enqueue_style('bhkev_bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css', VERSION, '1.0.0', 'all' );
    wp_enqueue_style('bhkev_style', get_template_directory_uri() . '/style.css', array('bhkev_bootstrap'), VERSION, 'all' );
    wp_enqueue_script('bhkev_bootstrap_js', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array('jquery'), VERSION, false );
    wp_enqueue_script('bhkev_jquery_js', get_template_directory_uri() . '/assets/js/jquery-3.3.1.slim.min.js', array('jquery'), VERSION, false );
}
add_action('wp_enqueue_scripts', 'bhkev_scripts');

function bhkev_admin_init(){
// -------------- chargement du style bootstrap au dashboard admin --------
    function bhkev_admin_scripts() {
        wp_enqueue_style('bhkev_bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css', array(), VERSION, 'all' );
    }
    add_action('admin_enqueue_scripts', 'bhkev_admin_scripts');
}
add_action('admin_init', 'bhkev_admin_init');

//--------------------utilitaires  ---------------------------------------

function bhkev_setup() {
    add_theme_support('thumbnails');
    //------ enleve le generateur de version----
    remove_action('wp_head', 'wp_generator');

    remove_filter('the_content', 'wptexturize');
    //-------support du titre ----------
    add_theme_support('title-tag');
    //---------acvtive la gestion des menu-----------------------
    register_nav_menus(array('primary' => 'principal'));
    //------- inclusion du fichier pour cooperer avec bootstrap----
    require_once('includes/wp_bootstrap_navwalker.php');
    //----- affiche et customisation du logo
    add_theme_support( 'custom-logo' , array(
		'height'		=>45,	
		'width'			=>45,	
		'flex-height'	=>true,	
		'flex-width'	=>true,
    ));
    add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
    ) );
}
add_action('after_setup_theme', 'bhkev_setup');

function bhkev_images_sizes($sizes) {
    $addsizes = array(
        "medium_large" => "Medium Large"
    );
    $newsizes = array_merge($sizes, $addsizes);
    return $newsizes;
}
add_filter('image_size_names_choose', 'bhkev_images_sizes');

function bhkev_give_me_meta($date1, $date2, $cat, $tags) {
    //-------- creation de phrase pour l'affichage d'un article ---------
    $chaine = 'publie le <time class="entry-date" datetime="';
    $chaine .= $date1;
    $chaine .= '"';
    $chaine .= $date2;
    $chaine .= '</time> dans la categorie ';
    $chaine .= $cat;
    if(strlen($tags) > 0):
        $chaine .= ' avec les etiquettes: '. $tags;
    endif;
    return $chaine;
    
}

function bhkev_activ_option() {
    $theme_opts = get_option('bhkev_opts');
    if (!$theme_opts) {
        $opts = array(
            'image_01_url' => '',
            'legend_01'    => ''
        );
        add_option('bhkev_opts', $opts);
    }
}
add_action('after_switch_theme', 'bhkev_activ_option');
//------------- ajout d'un menu option ---------------------
function bhkev_admin_menus() {
    add_menu_page(
        'Bhent options',
        'Options du theme',
        'publish_page',
        'bhkev_theme_opts',
        'bhkev_build_option_page'
    );
    include('includes/build-options-page.php');
}
add_action('admin_menu', 'bhkev_admin_menus');

//------------- ajout et customisation des widgets ---------------
function bhkev_widgets_init() {
    register_sidebar( array(
        'name'     => 'Footer Widget Zone',
        'description'=> 'Widgets affiche dans le footer: 4 minimum',
        'id'         => 'widgetized-footer',
        'before_widget'=> '<div id="%1$s" class="col-xs-12 col-sm-6 col-md-3 wrap-widget %2$s"><div class="inside-widget">',
        'after_widget' => '</div></div>',
        'before_title' => '<h2 class="h3 text-center">',
        'after_title'  => '</h2>',
    ));
    register_sidebar( array(
		'name'          => __( 'Right Sidebar', 'bhent' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'widget affiche dans la sidebar droite. ', 'bhent' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	register_sidebar( array(
		'name'          => __( 'Left Sidebar', 'bhent' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'widget affiche dans la sidebar gauche.', 'bhent' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
}
add_action('widgets_init', 'bhkev_widgets_init');