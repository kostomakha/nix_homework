(function($){
    //Первый вариант.
    //$('.main').parents('ul').children(':last-of-type').find('a').css("color","red");

    //Второй вариант
    // $('.main').parents('ul').each(function(){
    //    $(this).find('a').last().css("color","red");
    // });

    //Третий вариант
    var elements = document.querySelectorAll('ul > li:last-child a');
        console.log(elements);
            for (var i = 0; i < elements.length; i++) {
                if (i%2) {
                    elements[i].className += ' red';
                    };
            }

})(jQuery);