<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormForRegestr.aspx.cs" Inherits="WebApplication3.WebFormForRegestr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../Styles/style.css" />
    <script type="application/javascript" src="../JS/validatingofdata1.js">
    </script>
    <title>Регистрация</title>
    <style type="text/css">
        .newform {
            height: 936px;
        }
    </style>
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

        <div class="tabs" style="padding: 8px; width: 98.8%; top: 0px; left: 0px;">
        </div>

        <div class="centerblock" style="top: 0">
            <!--class="whitecenter" -->
            <h2 class="loginheader">Регистрация</h2>

            <div class="enterpart" style="left: -20%">

                <form id="registrForm" class="newform"  method="post" onsubmit="if(validateRegestr('submit')) submit_ServerClick; "  runat="server">  <!--delete 'action'  action="javascript:void(0);"-->
                    <% if (success){%>

                        <p><br><br><br><br><br></p>

                    <%} %>

                    <p><asp:Label ID="lbl_result" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="#0099FF"></asp:Label></p>
                   
                    
                    
                     <% if (success) { %>

                            <p><br><br><br></p>

                            <p><a href="WebFormEnter.aspx" class="new">Войти в систему</a></p>
                   
                    
                     <%} else {%>
                
                    <p><label for="surname"></label></p>
                    <p><br>Фамилия: <asp:TextBox ID="surname" runat="server" onchange="validateRegestr('surname')" TextMode="SingleLine"></asp:TextBox>
                    </p>

                    <p><br><label for="name"></label></p>
                    <p>Имя: <asp:TextBox ID="name" runat="server" onchange="validateRegestr('name')" TextMode="SingleLine"></asp:TextBox>
                    </p>

                    <p><br><label for="lastname"></label></p>
                    <p>Отчество: <asp:TextBox ID="lastname" runat="server" onchange="validateRegestr('lastname')" TextMode="SingleLine"></asp:TextBox>
                    </p>

                    <p><br><label for="login"></label></p>
                    <p>Логин: <asp:TextBox ID="login" runat="server" onchange="validateRegestr('login')" TextMode="SingleLine"></asp:TextBox>
                    </p>

                    <p><br><label for="password1"></label></p>
                    <p>Пароль: <asp:TextBox ID="password1" runat="server" onchange="validateRegestr('password1')" TextMode="Password"></asp:TextBox>
                    </p>

                    <p><br><label for="password2"></label></p>
                    <p>Повторите пароль: <asp:TextBox ID="password2" runat="server" onchange="validateRegestr('password2')" TextMode="Password"></asp:TextBox>
                    </p>

                    <p><br><label for="mail"></label></p>
                    <p>Электронная почта: <asp:TextBox ID="mail" runat="server" onchange="validateRegestr('mail')" TextMode="Email"></asp:TextBox>
                    </p>

                    <p><br><label for="phone" style="position: relative; left: -23%">Мобильный телефон: <br> <i>(необязательно)</i></label></p>
                    <p>
                        <asp:TextBox ID="phone" runat="server" onchange="validateRegestr('phone')" TextMode="Phone"></asp:TextBox>
                    </p>

                    <p><br><input id="submit" type="submit" value="Далее"></p>
                 <% } %>

                </form>
                

                    <p><br><br><br><br><br></p>
            </div>
        </div>






 <div class="downblock">
            <a class="downspecial" href="http://www.ssau.ru/info/" target="_blank">Об университете</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Полезные ссылки</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Контакты</a>
            <a class="downspecial" href="../MyWebForm.aspx" target="_self">Поиск пользователя</a>
            <a class="downspecial" href="../Pages/about.html">О сайте</a>
        </div>
    </div>




</body>
</html>
