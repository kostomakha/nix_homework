/** Created by phpstudent on 12/22/15.
 *
 */
(function($){
    var force = 5;
    var duration = 10;
    var interval = 100;
    var shaker = $('.shaker');



    var position = shaker.position();
    var top = position.top;
    shaker.offset({top: top});

    var i = 0;

    var shakeIt = function() {

        i++;

        shaker.animate({
            left: -force
        }, 100).animate({
            left: 0
        }, 100)

        if (i == duration) {
            clearInterval(intervalID);
        }
    };

    shaker.click(function(){
        intervalID = setInterval(shakeIt, interval);
    })

})(jQuery);