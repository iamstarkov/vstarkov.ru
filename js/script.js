window.scrollTo(0, 1);

var toggleClass = function (elem, className) {
    if (elem) {
        if(elem.className.indexOf(className) !== -1) {
            elem.className = elem.className.replace(className, '');
        } else {
            elem.className += ' ' + className;
        }
    }
};


var toggler = document.querySelectorAll('.js_menu-toggler')[0],
    body = document.querySelectorAll('body')[0];


toggler.addEventListener('click', function(e) {

    if (body.classList.toggle) {
        body.classList.toggle('active');
    } else {
        toggleClass(body, 'active');
    }

    e.preventDefault();
});