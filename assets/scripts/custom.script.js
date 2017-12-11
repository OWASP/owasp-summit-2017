(function($) {
    "use strict";

    $(document).ready(function() {



        // /*=========================================================================
        //  ===  Circular CountDown
        //  ========================================================================== */
        // if ( $('#circular-countdown').length ) {
        //     $("#circular-countdown").TimeCircles({
        //         "animation": "smooth",
        //         "bg_width": 1.0,
        //         "fg_width": 0.1,
        //         "circle_bg_color": "#ddd",
        //         "time": {
        //             "Days": {
        //                 "text": "Days",
        //                 "color": "#ff8a00",
        //                 "show": true
        //             },
        //             "Hours": {
        //                 "text": "Hours",
        //                 "color": "#dc4e41",
        //                 "show": true
        //             },
        //             "Minutes": {
        //                 "text": "Minutes",
        //                 "color": "#00b9ff",
        //                 "show": true
        //             },
        //             "Seconds": {
        //                 "text": "Seconds",
        //                 "color": "#42bd41",
        //                 "show": true
        //             }
        //         }
        //     });
        // }
        // /*=========================================================================
        //  ===  Circular CountDown End
        //  ========================================================================== */




        // /*=========================================================================
        //  ===  // SITE PATH
        //  ========================================================================== */
        // var lgx_path = window.location.protocol + '//' + window.location.host;
        // var pathArray = window.location.pathname.split('/');
        // for (var i = 1; i < (pathArray.length - 1); i++) {
        //     lgx_path += '/';
        //     lgx_path += pathArray[i];
        // }
        //
        // /*=========================================================================
        //  ===  // SITE PATH END
        //  ========================================================================== */






        /*=========================================================================
         ===  countdown
         ========================================================================== */
        if ( $('#lgx-countdown').length ) {

            var dataTime = $('#lgx-countdown').data('date'); // Date Format : Y/m/d

            $('#lgx-countdown').countdown(dataTime, function(event) {
                var $this = $(this).html(event.strftime('' +
                    /*+ '<span class="lgx-weeks">%w <i> weeks </i></span> '*/
                    '<span class="lgx-days">%D <i> Days </i></span> ' +
                    '<span class="lgx-hr">%H <i> Hours </i></span> ' +
                    '<span class="lgx-min">%M <i> Minutes </i></span> ' +
                    '<span class="lgx-sec">%S <i> Seconds </i></span>'
                ));
            });
            // $('#lgx-countdown').html(
            //     '<span class="lgx-days">%D <i> Daysaaaa </i></span> '
            //     + '<span class="lgx-hr">%H <i> Hours </i></span> '
            //     + '<span class="lgx-min">%M <i> Minutes </i></span> '
            //     + '<span class="lgx-sec">%S <i> Seconds </i></span>'
            // );
        }

        /*=========================================================================
         ===  countdown END
         ========================================================================== */




        /*=========================================================================
         ===  SMOOTH SCROLL - REQUIRES JQUERY EASING PLUGIN
         ========================================================================== */

//DC: The code below was causing a bug and a vulnerability (if 'href' had a jQuery payload)
/*        $( 'a.lgx-scroll' ).on( 'click', function(event) {
            var $anchor = $(this);
            var topTo   = $( $anchor.attr('href') ).offset().top;

            if ( window.innerWidth < 768 ) {
                topTo = ( topTo - 90 );
            }

            $( 'html, body' ).stop().animate({
                scrollTop: topTo
            }, 1500, 'easeInOutExpo');
            event.preventDefault();
            return false;
        } );
        */

        /*=========================================================================
         ===  SMOOTH SCROLL END
         ========================================================================== */



        // /*=========================================================================
        //  ===  magnific popup
        //  ========================================================================== */
        // $('#lgx-photo-gallery').magnificPopup({
        //     delegate: 'a', // child items selector, by clicking on it popup will open
        //     type: 'image',
        //     gallery: {
        //         enabled: true
        //     },
        //     image: {
        //         titleSrc: 'title'
        //     }
        //     // other options
        // });
        /*=========================================================================
         ===  magnific popup END
         ========================================================================== */




    });//DOM READY


})(jQuery);




