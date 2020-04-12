$(function(){
    // On recupere la position du bloc par rapport au haut du site
    var position_top_raccourci = $("#header").offset().top;
    
    //Au scroll dans la fenetre on déclenche la fonction
    $(window).scroll(function () {
    
    //si on a defile de plus de 150px du haut vers le bas
    if ($(this).scrollTop() > position_top_raccourci) {
    
    //on ajoute la classe "fixNavigation" a <div id="navigation">
    $('#header').addClass("fixNavigation"); 
    } else {
    
    //sinon on retire la classe "fixNavigation" a <div id="navigation">
    $('#header').removeClass("fixNavigation");
    }
    });
});
$(function(){
	$(document).on('scroll',function(){ // Détection du scroll
		
		// Calcul de la hauteur "utile"
		let hauteur = $(document).height()-$(window).height()
		
		// Récupération de la position verticale
		let position = $(document).scrollTop()

		// Récupération de la largeur de la fenêtre
		let largeur = $(window).width()

		// Calcul de la largeur de la barre		
		let barre = position / hauteur * largeur
		
		// Modification du CSS pour élargir ou réduire la barre		
		$("#progress").css("width",barre)
	});
});
(function($) {
    $WIN = $(window);
    var clPreloader = function() {
        
        $("html").addClass('cl-preload');

        $WIN.on('load', function() {

            //force page scroll position to top at page refresh
            // $('html, body').animate({ scrollTop: 0 }, 'normal');

            // will first fade out the loading animation 
            $("#loader").fadeOut("slow", function() {
                // will fade out the whole DIV that covers the website.
                $("#preloader").delay(300).fadeOut("slow");
            }); 
            
            // for hero content animations 
            $("html").removeClass('cl-preload');
            $("html").addClass('cl-loaded');
        
        });
    };
    (function ssInit() {
        clPreloader();
    })();
    
})(jQuery);

jQuery(document).ready(function() {
    var duration = 500;
    jQuery(window).scroll(function() {
      if (jQuery(this).scrollTop() > 100) {
        // Si un défillement de 100 pixels ou plus.
        // Ajoute le bouton
        jQuery('.cRetour').fadeIn(duration);
      } else {
        // Sinon enlève le bouton
        jQuery('.cRetour').fadeOut(duration);
      }
    });
                  
    jQuery('.cRetour').click(function(event) {
      // Un clic provoque le retour en haut animé.
      event.preventDefault();
      jQuery('html, body').animate({scrollTop: 0}, duration);
      return false;
    })
  });
