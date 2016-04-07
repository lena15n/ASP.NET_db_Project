<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormShow.aspx.cs" Inherits="WebApplication3.WebFormShow" %>

<!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="../Styles/style.css" />
    <script type="application/javascript" src="../JS/validatingofdata1.js"></script>
    <script type="application/javascript" src="../JS/jqquery.js"></script><!--//code.jquery.com/jquery-latest.js"></script>-->
    <title>Предмет</title>
</head>
<body>
    <div class="all" >
        <div class="head">
            <table>
                <tr>
                    <td><p><img class="setting" src="../Resources/faq-logo.png" alt="картинка отклеилась"></p></td>
                    <td><a href="../Pages/mainpagenew.html" class="downspecial"><h1 class="mytopheader"><b>ФАКУЛЬТЕТ ИНФОРМАТИКИ (Online Courses)</b></h1></a></td>
                </tr>
            </table>
        </div>
        <div class="tabs">
            <a class="downspecial" href="../WebFormEnter.aspx">Войти в систему</a>
        </div>
        <div class="leftblock">
            <div>
                <p><br><a class="leftmenu" href="http://www.ssau.ru/news/" target="_blank">Новости</a></p>
                <p><a class="leftmenu" href="http://www.ssau.ru" target="_blank">СГАУ</a></p>
                <p><a class="leftmenu" href="../Pages/professors.html">Преподаватели</a></p>
                <p><a class="leftmenu" href="http://fit.ssau.ru/struktura/kafedryi/" target="_blank">Кафедры</a></p>
            </div>
        </div>
        <div  class="whitetext" >
            <br>
            <h2 class="loginheader" style="color: white;top: 2%; margin-bottom: 4%; width: 360px; border: solid; background-color: #00bbfe; border-color: #00adf2; left: 30%; border-radius: 90px; "><br>Технологии сети Интернет<br><br></h2>
            <p style="left: 0; top: -2%; margin-top: -3%; margin-bottom: 8%; text-align: center;" class="headd">Кафедра Программных систем</p>
            <div  id="contentBlock" style="margin: 5%; width: 90%">
                <p class="header" style="left: 25%">АДРЕСАЦИЯ В СЕТИ ИНТЕРНЕТ</p>
                <p class="about">
                    В рамках курса излагаются основные принципы построения и функционирования сети Интернет,
                    рассматриваются базирующиея на них информационные технологии и формируются основные навыки создания клиент-серверных
                    Web-приложений.
                </p>
                <p class="about">Типы адресов</p>
                <p class="about">Компьютер в сети на базе протокола TCP/IP может имееть адреса трех уровней (но не менее двух):</p>
                <ol style="margin-left: 8%">
                    <li>
                        <p style="margin-left: -0.4%;" class="header">Локальный адрес компьютера (физический или MAC-адрес)</p>
                        <p class="info"><img class="img1" src="../Resources/DNS.png" alt="ооо">Локальный адрес компьютера. Для узлов, входящих в локальные сети - это МАС-адрес сетевого адаптера. Эти адреса назначаются производителями оборудования и являются уникальными адресами так как управляются централизовано, например, 11-А0-17-3D-BC-01. Для всех существующих технологий локальных сетей МАС-адрес имеет формат 6 байтов: старшие 3 байта - идентификатор фирмы производителя, а младшие 3 байта назначаются уникальным образом самим производителем. Для узлов, входящих в глобальные сети, такие как Х.25 или frame relay, локальный адрес назначается администратором глобальной сети.</p>
                        <br>
                    </li>
                    <li style="margin-right: 5%">
                        <p class="header" style="margin: 0;">Сетевой (IP-адрес)</p>
                        <p class="info">IP-адрес, состоящий из 4 байт, например, 109.26.17.100. Этот адрес используется на сетевом уровне. Он назначается администратором во время конфигурирования компьютеров и маршрутизаторов. IP-адрес состоит из двух частей: номера сети и номера узла. Номер сети может быть выбран администратором произвольно, либо назначен по рекомендации специального подразделения Internet (Network Information Center, NIC), если сеть должна работать как составная часть Internet. Обычно провайдеры услуг Internet получают диапазоны адресов у подразделений NIC, а затем распределяют их между своими абонентами.</p>
                        <br>
                    </li>
                    <li style="margin-right: 5%">
                        <p class="header" style="margin: 0;">Символьный (DNS-имя)</p>
                        <p class="info">Символьный идентификатор-имя, (DNS) например, SERV1.IBM.COM или www.ssau.ru. Этот адрес назначается администратором и состоит из нескольких частей, например, имени машины, имени организации, имени домена. Такой адрес, называемый также DNS-именем, используется на прикладном уровне, например, в протоколах FTP или telnet</p>
                        <br>
                    </li>
                </ol>
                <p class="header">IP-АДРЕСА</p>
                <p class="about"><b>IPv4</b> - адрес является уникальным 32-битным идентификатором IP-интерфейса в Интернет.</p><br>
                <p class="about"><b>IPv6</b> - адрес является уникальным 128-битным идентификатором IP-интерфейса в Интернет, иногда называют Internet-2, адресного пространства IPv4 уже стало не хватать, поэтому постепенно вводят новый стандарт.</p>
                <p class="about"><img class="img2" src="../Resources/ip.jpg" alt="отклеилась">IP-адреса принято записывать разбивкой всего адреса по октетам (8), каждый октет записывается в виде десятичного числа, числа разделяются точками.</p>
                <p class="about">Например, адрес 10100000010100010000010110000011 записывается как 10100000.01010001.00000101.10000011 = 160.81.5.131</p>
                <br><br>
                <p class="header">ОСНОВНЫЕ КЛАССЫ IP-АДРЕСОВ</p>
                <p class="about">В самом начале развития сети было принято решение раздавать IP-адреса блоками, было создано три вида блока, и зарезервировано под эти блоки адреса:</p>
                <table class="ip" id="part2">
                    <thead>
                        <tr>
                            <th class="ip"><p><br>Класс</p><br></th>
                            <th class="ip"><p><br>Длина сетевой части адреса в байтах</p><br></th>
                            <th class="ip"><p>Первое число</p></th>
                            <th class="ip"><p>Количество IP - адресов в блоке</p></th>
                            <th class="ip"><p>Пример блока</p></th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="ip"><p>A</p></td>
                        <td class="ip"><p>1</p></td>
                        <td class="ip"><p>0-127</p></td>
                        <td class="ip"><p>16 777 216</p></td>
                        <td class="ip"><p>122.0.0.0/255.0.0.0 или 122.0.0.0/8</p></td>
                    </tr>
                    <tr>
                        <td class="ip"><p>B</p></td>
                        <td class="ip"><p>2</p></td>
                        <td class="ip"><p>128-191</p></td>
                        <td class="ip"><p>65 536</p></td>
                        <td class="ip"><p>152.126.0.0/255.255.0.0 или 122.126.0.0/16</p></td>
                    </tr>
                    <tr>
                        <td class="ip"><p>C</p></td>
                        <td class="ip"><p>3</p></td>
                        <td class="ip"><p>192-223</p></td>
                        <td class="ip"><p>256</p></td>
                        <td class="ip"><p>83.149.236.0/255.255.255.0 или 122.149.236.0/24</p></td>
                    </tr>
                    <thead>
                        <tr>
                            <th class="ip" colspan="5"><br><p>Специальные адреса</p><br></th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="ip"><p>D</p></td>
                        <td class="ip"><p>-</p></td>
                        <td class="ip"><p>224-239</p></td>
                        <td class="ip" colspan="2"><p>групповые адреса</p><br></td>
                    </tr>
                    <tr>
                        <td class="ip"><p>E</p></td>
                        <td class="ip"><p>-</p></td>
                        <td class="ip"><p>240-255</p></td>
                        <td class="ip" colspan="2"><p>для экспериментальных целей</p><br></td>
                    </tr>
                </table>
                
            <div style="margin-top: 7%;">
                <h2 class="label" style="cursor: pointer; font-size: 12pt; width: 15%; margin-left: 2%">Назад</h2>
                <h2 class="label" onclick="ajaxCallFunction()" style="cursor: pointer; font-size: 12pt; width: 15%; float: left; margin-top: -8.4%">Вперед</h2>
            </div>

            </div>            
        </div>


        <div class="downblock">
            <a class="downspecial" href="http://www.ssau.ru/info/" target="_blank">Об университете</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Полезные ссылки</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Контакты</a>
            <a class="downspecial" href="../MyWebForm.aspx" target="_self">Поиск пользователя</a>
            <a class="downspecial" href="../Pages/about.html">О сайте</a>
        </div>


        <script type="application/javascript">
            $('img.img1').hover(function(){
                        $(this).stop().animate({width: '400px',
                            height: '400px', marginLeft: '40px'});
                    },
                    function(){
                        $(this).stop().animate({width: '200px',
                            height: '200px', 'marginLeft': '20px'});
                    });

            $('img.img2').hover(function(){
                        $(this).stop().animate({width: '600px',
                            height: '300px', marginLeft: '40px'}, 1000);
                    },
                    function(){
                        $(this).stop().animate({width: '400px',
                            height: '200px', 'marginLeft': '20px'}, 1000)

                    });

            $('h2.label').hover(function(){
                        $(this).stop().animate({
                           backgroundColor: "red"
                        });
                    },
                    function(){
                        $(this).stop().animate({
                            backgroundColor: "#f6c10a"
                        });
                    });

            $(document).ready(function() {
                $("h2.loginheader").css("display", "none").fadeIn(800);
                $("p.headd").css("display", "none").fadeIn(800);
            });
            
        </script>
    </div>

     <script>
            function ajaxCallFunction(){
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState == 4 && xhttp.status == 200) {
                        document.getElementById("contentBlock").innerHTML = xhttp.responseText;
                    }
                };
                xhttp.open("GET", "WebFormShow2.aspx", true);
                xhttp.send();
            }

        </script>
</body>
</html>