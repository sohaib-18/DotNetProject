$(document.body).delegate(".select-all-checkbox .label_check", "click", function () {

    var checked = $(this).find('input').prop('checked');
    var $checkboxes = $(".ckbSelect input");
    var $items = null;

    if (checked)
        $items = $checkboxes.not(":checked").parents(".label_check");
    else
        $items = $checkboxes.filter(":checked").parents(".label_check");


    // do not hang the ui
    // run following code in a separate thread using setTimeout
    
    setTimeout(function () {
        $items.trigger("click")
    }, 10);
    

});

var d = document;
var gebtn = function (parEl, child) {
    return parEl.getElementsByTagName(child);
};


$(function () {

    var body = document.body;
    body.className = body.className && body.className != '' ? body.className + ' has-js' : 'has-js';

    if (!d.getElementById || !d.createTextNode) return;

    $('.label_check, .label_radio').each(function () {
        var $this = $(this);
        var $input = $this.find('input');
        var type = $input.attr('type');
        var checked = $input.prop('checked');

        var cssClass = type == "checkbox"
                            ? (checked ? 'label_check c_on' : 'label_check c_off')
                            : (checked ? 'label_radio r_on' : 'label_radio r_off');

        $this.addClass(cssClass);
    }).click(function (e) {

        check_it.apply(this);


        e.preventDefault();
    });

});

var check_it = function () {
    var $this = $(this);
    var $input = $this.find('input');

    if ($this.hasClass('c_off') || $input.prop('checked') == false) {
        $this.removeClass('c_off').addClass('c_on');
        $input.prop("checked", true);
    } else {
        $this.removeClass('c_on').addClass('c_off');
        $input.prop("checked", false);
    };
};


var turn_radio = function () {
    var inp = gebtn(this, 'input')[0];
    if (this.className == 'label_radio r_off' || inp.checked) {
        var ls = gebtn(this.parentNode, 'label');
        for (var i = 0; i < ls.length; i++) {
            var l = ls[i];
            if (l.className.indexOf('label_radio') == -1) continue;
            l.className = 'label_radio r_off';
        };
        this.className = 'label_radio r_on';
        inp.click();
    } else {
        this.className = 'label_radio r_off';
        inp.click();
    };
};
