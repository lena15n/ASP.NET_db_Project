<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="WebApplication3.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 360px;
            width: 635px;
        }
    </style>
</head>
<body>

    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
          "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../Styles/style.css" />
    <title>Поиск пользователя</title>
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
        <div class="tabs">
            <a class="downspecial" href="../WebFormEnter.aspx">Войти в систему</a>
        </div>
        <div class="leftblock" style="height: 80%">
            <div>
                <p><br><a class="leftmenu" href="http://www.ssau.ru/news/" target="_blank">Новости</a></p>
                <p><a class="leftmenu" href="http://www.ssau.ru" target="_blank">СГАУ</a></p>
                <p><a class="leftmenu" href="../Pages/professors.html">Преподаватели</a></p>
                <p><a class="leftmenu" href="http://fit.ssau.ru/struktura/kafedryi/" target="_blank">Кафедры</a></p>
            </div>
        </div>
        <div class="whitetext" style="text-align: left;">
             
            <h2 class="loginheader" style="margin-bottom: 4%; margin-top: 3%">Поиск пользователя</h2>
                
                <div style="width: 100%;  height:800px; margin-top: 4%; align-items: center;">
                   <form id="form1" runat="server">


                         <div class="enterpart" style="width: 600px; height:40%; text-align: right; left: 150px; margin-bottom:700px; background-color:lightblue; margin-bottom:5%">
                        
                            <p><b>Поиск пользователя по логину<b></p>
                         <br><br>
                        <asp:Label ID="Label1" runat="server" Text="Логин: " Font-Bold="False"></asp:Label>
                        <asp:TextBox ID="findByLoginTextBox" runat="server" Width="130px"></asp:TextBox>
                         <br><br>
                        <asp:Button ID="findByLoginButton" runat="server" Text="Найти" onclick="findByLoginButton_Click"/>
                         <br><br><br>
                       
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="600px"> <%--DataSourceID="SqlDataSource1"--%>                     
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                     </div>

                       <br /><br /><br /><br />

                     <div class="enterpart" style="width: 600px; height:50%; text-align: right; left: 150px;background-color:lightblue; margin-bottom:500px">
                        <p><b>Поиск пользователя по фамилии и имени<b></p>
                         <br><br>
                        <asp:Label ID="findSurnamelbl" runat="server" Text="Фамилия: " Font-Bold="False"></asp:Label>
                        <asp:TextBox ID="findSurnameTextBox" runat="server" Width="130px"></asp:TextBox>
                         <br><br>
                        <asp:Label ID="findUserNamelbl" runat="server" Font-Bold="False" Font-Size="Medium" Text="Имя: "></asp:Label>
                        <asp:TextBox ID="findUserNameTextBox" runat="server" Height="16px" Width="130px"></asp:TextBox>
                         <br><br>
                        <asp:Button ID="findUserButton" runat="server" Text="Найти" onclick="findUserButton_Click" />
                         <br><br><br>
                       
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="600px"> <%--DataSourceID="SqlDataSource1"--%>                     
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                         <br>
                      </div>
                     
                    
                </div>

                

                
        </div>


        <div class="downblock">
            <a class="downspecial" href="http://www.ssau.ru/info/" target="_blank">Об университете</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Полезные ссылки</a>
            <a class="downspecial" href="http://www.ssau.ru/info/contacts/" target="_blank">Контакты</a>
            <a class="downspecial" href="../Pages/useful.html" target="_self">Поиск пользователя</a>
            <a class="downspecial" href="#">О сайте</a>
        </div>
    </div>
</form>


    </body>
</html>