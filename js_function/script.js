
function foo(x) {
    var x = x;
    return function bar(y){
        var z = x + y;
        console.log(x + y);
    }
}

foo(2)(10);
foo(3)(2);
foo(5)(6);

