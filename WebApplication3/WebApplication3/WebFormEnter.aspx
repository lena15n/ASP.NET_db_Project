<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormEnter.aspx.cs" Inherits="WebApplication3.WebFormEnter" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
          "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../Styles/style.css" />
    <script type="application/javascript" src="../JS/validatingofdata1.js">
    </script>
    <title>Вход</title>
</head>
<body>
    <div class="all">
        <div class="head">
            <table>
                <tr>
                    <td><p><img class="setting" src="../Resources/faq-logo.png" alt="картинка отклеилась"></p></td>
                    <td><a href="../Pages/mainpagenew.html" class="downspecial"><h1 class="mytopheader"><b>ФАКУЛЬТЕТ ИНФОРМАТИКИ (Online Courses)</b></h1></a></td>
                </tr>
            </table>
        </div>
        <div class="tabs" style="padding: 8px; width: 98.8%">
            <p></p>
        </div>
        <div class="whitecenter">
            <h2 style="margin-bottom: 5%" class="loginheader">Вход в систему</h2>

            <%if (lbl_result.Text != ""){%>
                <p><br><br><br><br><br></p>
            <%} %>
            <asp:Label ID="lbl_result" runat="server" Font-Size="Large"></asp:Label>




            <div class="enterpart" style="left: -20%; text-align: right">
                <form id="enterForm" class="form" method="post" runat="server"  ><!-- onsubmit="return validateEnter(document.getElementById('enterForm'));" -->
                    <p>&nbsp;</p>
                   
                    <p><br><label for="login"></label></p>
                    <p>Логин: <asp:TextBox ID="login" runat="server" TextMode="SingleLine"></asp:TextBox></p>
                    <p id="loginError"></p>


                    <p><br><label for="password"></label></p>
                    <p>Пароль: <asp:TextBox ID="password" runat="server"  TextMode="Password"></asp:TextBox></p>
                    <p id="passwordError"></p>

                    <p><br><input id="submitall" type="submit" value="Войти" runat="server" onserverclick="submitall_ServerClick"></p>
                </form>
            </div>


            <p style="text-align: right"><br><a href="../WebFormForRegestr.aspx" class="new"><br>Регистрация</a></p>
        </div>
        <div class="downblock">
            <a class="downspecial" href="http://www.ssau.ru/info/" target="_blank">Об университете</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Полезные ссылки</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Контакты</a>
            <a class="downspecial" href="../Pages/useful.html" target="_self">Поиск пользователя</a>
            <a class="downspecial" href="../Pages/about.html">О сайте</a>
        </div>
    </div>
    </form>
</body>
</html>
