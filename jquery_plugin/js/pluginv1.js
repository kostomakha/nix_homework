/**
 * Created by roach on 20.12.15.
 */

(function($){

    $fn.tableView = function (){

        $( ".goods" ).each(function() {
            $(this).toggleClass(" table");
        });

        var count = 1;
        $( ".car" ).each(function() {
            $(this).toggleClass(" table-row").removeClass("car");
            $(this).prepend("<div><p>" + count + "</p></div>");
            $('#img-' + count).insertBefore('header.table-cell');
            ++count;
        }).contents()
            .filter(function() {
                return this.nodeType === 1;
            }).toggleClass('table-cell').removeClass("head content link");
    };





})(jQuery);