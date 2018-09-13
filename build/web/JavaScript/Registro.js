
function mayus(e) {
    e.value = e.value.toUpperCase();
}
function letras(){
    var letras = " abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóúÁÉÍÓÚüÜ";
    var x = event.keyCode;
    var letra = String.fromCharCode(x);
    var n = letras.indexOf(letra);
    var texto = noms.value;
    if (letra === ' '){
        if(texto.indexOf(' ') !== -1)
            event.returnValue = false;
    }
    if (n===-1)
        event.returnValue= false;
}
function nume(){
    var numeros = "1234567890";
    var x = event.keyCode;
    var numero = String.fromCharCode(x);
    var n = numeros.indexOf(numero);
    if (n===-1)
        event.returnValue= false;
}
function validarPasswd(){
    var p1 = document.getElementById("con").value;
    var p2 = document.getElementById("concom").value;
    if(p1 === p2){
        return true;
    }
    else
        alert("Password incorrectas");
        return false;
}
function nojaks(){
    var jaks="<>";
    var x = event.keyCode;
    var este = String.fromCharCode(x);
    var n = jaks.indexOf(este);
    if(n===0 || n===1){
        event.returnValue = false;
    }
}
function click(){
                if(event.button==2){
                   alert('No es posible realizar esta acción');
                }
            }
            document.onmousedown = click
        
function disbaleCopyPaste(elm){
    // Deshabilitar los eventos cut/copy/paste
    elm.onkeydown = interceptKeys
    elm.oncontextmenu = function(){
            return false
    }
}

function interceptKeys(evt) {
    evt = evt||window.event // IE support
    var c = evt.keyCode
    var ctrlDown = evt.ctrlKey||evt.metaKey // Mac

    if (ctrlDown && evt.altKey) return true
    // Verifica los ctrl + c, v y x
    else if (ctrlDown && c==67) return false // c
    else if (ctrlDown && c==86) return false // v
    else if (ctrlDown && c==88) return false // x



    return true
}

function oculta(){
    document.getElementById("").visibility="hidden";
}