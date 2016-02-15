/**
 * Created by roach on 20.12.15.
 */

(function($){
    var defaults = {
        tableClass: 'table',
        tableRow: 'table-row',
        tableCell: 'table-cell',
        itemClass: 'car',
        removeClasses: 'head content link'
    };

    var methods;
    methods = {
        init: function (params) {
            var options = $.extend(true, {}, defaults, params);

            if (!($(this).hasClass(options.tableClass))) {

                this.toggleClass(options.tableClass);
                var child = this.children('.' + options.itemClass);
                var count = 1;
                child.each(function () {
                    $(this).toggleClass(options.tableRow).removeClass(options.itemClass);
                    $(this).prepend("<div>" + count + "</div>");
                    //    $('#img-' + count).insertBefore('header.table-cell');
                    ++count;
                }).contents()
                    .filter(function () {
                        return this.nodeType === 1;
                    }).toggleClass(options.tableCell).removeClass(options.removeClasses);
            }
            return this;
        },

        reset: function () {

            var options = $.extend(true, {}, defaults);

            if (($(this).hasClass(options.tableClass))) {
                this.toggleClass(options.tableClass);
                console.log(options.itemClass);
                var child = this.children('.' + options.tableRow)
                console.log(child);
                child.each(function () {
                    $(this).toggleClass(options.itemClass).removeClass(options.tableRow);
                    $(this).children('div').remove();
                }).contents()
                    .filter(function () {
                    return this.nodeType === 1;
                }).removeClass(options.tableCell);
            };
        }
    };

    $.fn.tableView = function (method){
       if ( methods[method] ) {
            return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
        } else if ( typeof method === 'object' || ! method ) {
            return methods.init.apply( this, arguments );
        } else {
            $.error( 'Метод "' +  method + '" не найден в плагине jQuery.mySimplePlugin' );
        }
    };
})(jQuery);