////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function showError(container, errorMessage) {
    container.className = 'error';
    document.createElement('br');
    var msgElem = document.createElement('span');//создали просто элемент
    msgElem.className = "error-message";
    msgElem.innerHTML = '<br>' + errorMessage;
    container.appendChild(msgElem);//добавили в конец контейнера
}

function resetError(container) {
    container.className = '';
    if (container.lastChild.className == "error-message") {
        container.removeChild(container.lastChild);
    }
}

function validateEnter(form) {
    var elems = form.elements;
    var flag = true;
    resetError(elems.login.parentNode);
    if (elems.login.value == '' || elems.login.value.indexOf(' ') != -1 ||
        elems.login.value.length < 3 || elems.login.value > 20) {
        showError(elems.login.parentNode, '<br>Логин должен содержать 3-20 символов без пробелов!');
        flag = false;
    } else if (elems.login.value.search(/^[А-Я]/i) != 0 && elems.login.value.search(/^[A-Z]/i) != 0) {//^поиск комбинации, с кот-ой начинается поле, - - диапазон, i - не чувств к регистру
        showError(elems.login.parentNode, '<br>Логин должен начинаться с буквы!');
        flag = false;
    }

    resetError(elems.password.parentNode);
    if (elems.password.value == '') {
        showError(elems.password.parentNode, '<br>Введите пароль для входа в систему!');
        flag = false;
    } else if (elems.password.value.length < 7) {
        showError(elems.password.parentNode, '<br>Пароль должен содержать не менее 7 символов!');
        flag = false;
    } else if (elems.password.value.indexOf(' ') != -1) {
        showError(elems.password.parentNode, '<br>Пароль не должен содержать пробелы!');
        flag = false;
    }

    if (flag) {
        //textEnter = 'Вошли как ' + elems.login.value;
        //document.location.href = 'mainpage.html';
        return true;
       

        // document.open("mainpage.html",document.title);
        // window.g .open('mainpage.html');
    }
    else {
        if (document.getElementById('submitall').parentNode.lastChild.className != 'error-message') {//если записи об ошибке не было
            document.createElement('br');
            var msgElem = document.createElement('span');
            msgElem.className = "error-message";
            msgElem.innerHTML = '<br>Заполните поля корректно!';
            document.getElementById('submitall').parentNode.appendChild(msgElem);
        }
    }

    return false;
}
/*function onSubmitClick(form){
 if (validateEnter(form) == false) {
 showError(elems.submit.parentNode, '<br>Заполните поля корректно!');
 }
 else
 window.open('mainpage.html');
 }*/
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var textEnter;

function settextenter() {
    if (textEnter == null) {
        document.getElementById('textenter').innerHTML = 'Войти в систему';
        console.log('зашли в сет, текста нет');
    }
    else {
        document.getElementById('textenter').innerHTML = textEnter;
        console.log('зашли в сет, текст есть');
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function validateRegestr(id) {
    var element = document.getElementById(id);
    resetError(element.parentNode);

    switch (id) {
        case 'surname':
        {
            if (/^[A-Z]+$/i.test(element.value) == false && /^[А-Я]+$/i.test(element.value) == false) {
                showError(element.parentNode, 'Фамилия должна состоять только из русских букв или <br>только из английских без пробелов!');
                console.log('не норм');
                return false;
            } else {
                console.log('норм');
                return true;
            }
        }
            break;
        case 'name':
        {
            if (/^[A-Z]+$/i.test(element.value) == false && /^[А-Я]+$/i.test(element.value) == false) {
                showError(element.parentNode, 'Имя должно состоять только из русских букв или <br>только из английских без пробелов!');
                return false;
            }
            else return true;
        }
            break;
        case 'lastname':
        {
            if (/^[A-Z]+$/i.test(element.value) == false && /^[А-Я]+$/i.test(element.value) == false) {
                showError(element.parentNode, 'Отчество должно состоять только из русских букв или <br>только из английских без пробелов!');
                return false;
            }
            else
                return true;
        }
            break;
        case 'login':
        {
            if (/^[A-Z][A-Z0-9-_\.]{2,20}$/i.test(element.value) == false &&
                /^[А-Я][А-Я0-9-_\.]{2,20}$/i.test(element.value) == false) {
                showError(element.parentNode, 'Логин должен начинаться с буквы и содержать 3-20 символов без пробелов!');
                return false;
            }
            else
                return true;
        }
            break;
        case 'password1':
        {
            var password2 = document.getElementById('password2');
            resetError(password2.parentNode);
            password2.value = '';//при смене пароля поле для повторного ввода пароля очищаем

            if (/^[А-ЯЁA-Z0-9_]{7,}$/i.test(element.value) == false) {
                showError(element.parentNode, 'Пароль должен содержать не менее 7 символов,<br>состоять только из букв русского и латинского алфавита,<br>цифр и символа нижнего подчеркивания!');
                return false;
            }
            else
                return true;
        }
            break;
        case 'password2':
        {
            var password1 = document.getElementById('password1');
            if (/^[А-ЯЁA-Z0-9_]{7,}$/i.test(password1.value) == true) {//если пароль заполнен верно
                if (element.value == password1.value) {
                    resetError(password1.parentNode);
                    return true;
                }
                else {
                    if (password1.parentNode.lastChild.className != 'error-message')
                        showError(password1.parentNode, 'Пароли не совпадают!');

                    showError(element.parentNode, ' ');
                    return false;
                }
            }
        }
            break;
        case 'mail':
        {
            if (/^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$/i.test(element.value) == false) {
                showError(element.parentNode, 'Некорректный почтовый адрес!');
                return false;
            }
            return true;
        }
            break;

        case 'phone':
        {
            if (element.value != '')
                if (/^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/.test(element.value) == false) {
                    showError(element.parentNode, 'Некорректный номер телефона!');
                    return false;
                }
                else
                    return true;
            else
                return true;
        }
            break;
        case 'submit':
        {
            if (validateRegestr('surname') && validateRegestr('name') && validateRegestr('lastname') &&
                validateRegestr('login') && validateRegestr('password2') && validateRegestr('password1') &&
                validateRegestr('mail') && validateRegestr('phone')) {
                //window.open('mainpage.html'); // будет в новой вкладке
                textEnter = 'Вошли как ' + document.getElementById('login').value;
                // location.href = 'mainpage.html';// в той же вкладке

                return true;
            }
            else {
                if (document.getElementById('submit').parentNode.lastChild.className != 'error-message') {
                    document.createElement('br');
                    var msgElem = document.createElement('span');
                    msgElem.className = "error-message";
                    msgElem.innerHTML = '<br>' + 'Заполните поля корректными данными!';
                    element.parentNode.appendChild(msgElem);//добавили в конец
                }

                return false;
            }
        }
            break;
    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function openSubject() {
    var elem = document.getElementById("start_button").style.backgroundColor = "red";
    location.href = '../WebFormShow.aspx';
    // location.replace('subjectstudy.html');
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function big(id) {
    var elem = document.getElementById(id);
    //var self_width = Number(elem.style.width.substring(0,elem.style.width.length - 2));
    //var self_height = Number(elem.style.height.substring(0,elem.style.height.length - 2));
    //elem.style.width = (self_width + 5) + "px";
    //elem.style.height = (self_height + 5) + "px";
    //setTimeout(big(id),1000);
    //elem.style.webkitTransform = "scale(0.8)";

    if (id == 'img2') {
        elem.style.width = "200px";
        elem.style.height = "100px";

    }
    console.log('hsOVER');
    //setInterval(small(id), 500);
    //setInterval(big(id), 500);
    // elem.style.transform = "scale(1.5)";
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function small(id) {
    /* var elem = document.getElementById(id);
     if(id == 'img2') {
     elem.style.width = "400px";
     elem.style.height = "200px";
     console.log('hsOUT');
     }*/
    // setInterval(small(id), 500);
    //setInterval(big(id), 500);
    //setTimeout(big(id),500);
    //elem.style.transform = "scale(1.5)";
    //elem.style.transform = "none";
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function openList(id, idtoggler) {
    openbox(id, idtoggler);
    return false;
}

function openbox(id, idtoggler) {
    toggler = document.getElementById(idtoggler);
    var div = document.getElementById(id);
    if (div.style.display == 'block') {
        div.style.display = 'none';
        toggler.innerHTML = 'Открыть';
    }
    else {
        toggler.innerHTML = 'Закрыть';
        div.style.display = 'block';

    }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/*function loginEnterFormFunction(){
 var inputLogin = document.getElementById("login");
 var error = document.getElementById("loginError");

 if (inputLogin.value == '' || inputLogin.value.indexOf(' ') != -1){//(parseString(inputLogin))){
 error.value = "Логин должен содержать 3-30 символов и не содержать пробелов";//inputLogin.value.search(/ /) != -1
 console.log("consoleeeee1111111111");
 inputLogin.value = "HJJJJJJJJJJJJJ";
 }
 else{
 console.log("consoleeeee");
 error.value = "fdhymkh";
 alert("zbs");
 }
 }*/


//var reg = /^\w+@\w+\.\w{2,4}$/i; - для почты
//if (!reg.test(mail))

//if(!(/^w+[-_.]*w+@w+-?w+.[a-z]{2,4}$/.test(data.email.value)) )
//http://www.net-f.ru/item/javascript/44.html

//нужен флаг обязательности поля - индекс мб и телефон
//http://plnkr.co/edit/2u0U9S5nZlcurphOZEAG?p=preview


/*// alert('НЕ ЦИФРА!');
 emailEnterFormFunction(){

 }

 enterFormFunction(){
 var w = window.open('mainpage.html','Передали параметры'); //изменить окна, чтобы не было Войти в систему
 }

 regestrFormFunction(){

 }
 */
