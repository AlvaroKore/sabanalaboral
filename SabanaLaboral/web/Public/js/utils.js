function _initMaterialzeComponents() {
    $('.dropdown-button').dropdown({
        inDuration: 300,
        outDuration: 225,
        constrainWidth: true, // Does not change width of dropdown to that of the activator
        hover: false, // Activate on hover
        gutter: 0, // Spacing from edge
        belowOrigin: true, // Displays dropdown below the button
        alignment: 'right', // Displays dropdown with edge aligned to the left of button
        stopPropagation: false // Stops event propagation
    });
    $('select').material_select();
    $(".button-collapse").sideNav();
}

function _validElement(that) {
    var valor = $(that).val();
    if (valor === null) {
        $(that).addClass("invalid");
        return false;
    }
    var parent = $(that).parent();

    var pattern = "";

    var $el = parent.hasClass("select-wrapper") ? parent : $(that);

    $el.removeClass("valid");
    $el.removeClass("invalid");


    if ($el.hasClass("required")) {
        pattern = /.*\S.*/;
    }

    if ($el.hasClass("email")) {
        pattern = /\S+@\S+\.\S+/;
    }



    if (valor.match(pattern)) {
        $el.addClass("valid");
        return true;

    } else {
        $el.addClass("invalid");
        console.log("invalido");
        return false;
    }
}

function _handleBlur() {
    $(" select.required,  input[type='text'].required,textarea.required, input[type='password'].required, .email").on("blur , change", function () {
        _validElement(this);

    });
}

function _onEnterForm(idContainer, callback) {
    if (!idContainer) {
        alert("idContainer is required onEnterForm");
        return false;
    }
    if (!$("#" + idContainer).length) {
        alert(idContainer + " not found on DOM onEnterForm :(");
        return false;
    }
    if (!callback) {
        alert("callback is required onEnterForm");
        return false;
    }

    if (typeof callback !== 'function') {
        alert("callback should be a function onEnterForm");
        return false;
    }



    $("#" + idContainer + " select, #" + idContainer + " input[type='text'], #" + idContainer + " input[type='password'] ").on("keypress", function (ev) {
        if (ev.which === 13) {
            callback();
            return false;
        }
    });
}

function _onlyNumbers() {
    $(".numero").keydown(function (e) {
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 || (e.keyCode == 65 && e.ctrlKey === true) || (e.keyCode == 67 && e.ctrlKey === true) || (e.keyCode == 88 && e.ctrlKey === true) || (e.keyCode >= 35 && e.keyCode <= 39)) {
            return;
        }
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });
}

function _onValidForm(idContainer, callback) {
    if (!idContainer) {
        alert("idContainer is required onValidForm");
        return false;
    }

    if (!callback) {
        alert("callback is required onValidForm");
        return false;
    }

    if (typeof callback !== 'function') {
        alert("callback should be a function onValidForm");
        return false;
    }



    if (!$("#" + idContainer).length) {
        alert(idContainer + " not found on DOM onValidForm :(");
        return false;
    }

    var notValid = 0;
    $("#" + idContainer + " select.required, #" + idContainer + " input[type='text'].required, #" + idContainer + " input[type='password'].required, #" + idContainer + "  .email, #" + idContainer + " textarea.required")
            .each(function () {
                notValid = _validElement(this) ? notValid : notValid + 1;
            });

    if (!notValid) {
        callback();
    } else {
        var pedos = $(".invalid").length;
        Materialize.toast("Existen " + pedos + " valores invalidos", 4000);
        $(".toast").css("background", "#e57373");
    }
}

function _actionMessage() {
    $(".actionMessage").each(function () {
        var errorMessage = $(this).attr("actionMessage");
        Materialize.toast(errorMessage, 4000);

    });
}

function _initMoment() {
    if (!moment) {
        alert("moment is required");
        return false;
    }
    moment.locale("es");
    $(".moment").each(function () {
        var timeMilliSeconds = Number($(this).attr("time"));
        $(this).html('Creado hace ' + moment(timeMilliSeconds).fromNow(true));
    });

    $(".moment-formato").each(function () {
        var formato = $(this).attr("formato");
        $(this).html('Creado hace ' + moment(formato, "YYYY-MM-DD HH:mm:ss").fromNow(true));
    });
}

function _initDatePicker(cb, obj) {
    var format = 'dd/mm/yyyy';
    if (obj) {
        format = obj.format || format
    }
    $('.datepicker').pickadate({
        monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
        weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sábado'],
        weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
        today: 'Hoy',
        clear: 'Borrar',
        close: 'OK',
        format: format,
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 180,
        onClose: cb
    });
}

function _handleStickyHeader(sticky) {

    if (typeof sticky !== "undefined") {

        var pos = sticky.offset().top,
                win = $(window);

        win.on("scroll", function () {
            win.scrollTop() >= pos ? sticky.addClass("sticky") : sticky.removeClass("sticky");
        });
    }
}

function _initTimePicker() {
    $('.timepicker').pickatime({
        default: 'now', // Set default time: 'now', '1:30AM', '16:30'
        fromnow: 0, // set default time to * milliseconds from now (using with default = 'now')
        twelvehour: false, // Use AM/PM or 24-hour format
        donetext: 'OK', // text for done-button
        cleartext: 'Clear', // text for clear-button
        canceltext: 'Cancel', // Text for cancel-button,
        container: undefined, // ex. 'body' will append picker to body
        autoclose: false, // automatic close timepicker
        ampmclickable: true, // make AM PM clickable
        aftershow: function () {
        } //Function for after opening timepicker
    });
}

function _getParameterByName(name, url) {
    if (!url) {
        url = window.location.href;
    }
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
            results = regex.exec(url);
    if (!results)
        return null;
    if (!results[2])
        return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function _preventSubmit() {
    $("input").keydown(function (event) {
        if (event.keyCode == 13) {
            event.preventDefault();
            return false;
        }
    });
}

function _initCurrency() {
    $(".currency").each(function () {
        var number = Number($(this).attr("number"));
        $(this).html(numeral(number).format('$0,0.00'));
    });
}

function _swal(idAction, obj) {
    obj = obj || {};
    var buttonText = obj.buttonText || 'Eliminar';
    var title = obj.title || '¿Estas seguro de eliminar?';
    if (!Swal) {
        alert("Swal is required");
        return;
    }
    Swal.fire({
        title: title,
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: buttonText
    }).then(function (result) {
        if (result.value) {
            if (typeof idAction === 'string') {
                $("#" + idAction).click();

            }
            if (typeof idAction === 'function') {
                idAction();
            }

        } else {

            Swal.fire({
                type: 'error',
                title: 'proceso cancelado'
            });
        }
    });

}

function _handleChangeSwitch() {
    $("input[type='checkbox'].switch").change(function () {
        var checked = $(this).prop("checked");
        var $div = $($(this).parents("div.switch")[0]);
        $div.find("input[type='text']").val(checked)

    });

}
/*para usar switch mapeado con hdn se ua en ajaxMC_FiltrosReportes*/
function _initSwitch() {
    $("input[type='checkbox'].switch").each(function () {
        var $textfield = $($(this).parents("div.switch")[0]).find("input[type='text']");
        var checked = $textfield.val() === "true"
        $(this).prop("checked", checked);
    });
}



var utils = {
    init: function () {
        // _preventSubmit();
        _initMaterialzeComponents();
        _handleBlur();
        _onlyNumbers();
        _initCurrency();
        _initSwitch();
        _handleChangeSwitch();
        Materialize.updateTextFields();

    },
    initMoment: _initMoment,
    initActionMessage: _actionMessage,
    initDatePicker: _initDatePicker,
    initTimePicker: _initTimePicker,
    handleStickyHeader: _handleStickyHeader,
    onEnterForm: _onEnterForm,
    onValidForm: _onValidForm,
    getParameterByName: _getParameterByName,
    swal: _swal


};