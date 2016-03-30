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
    <title>О сайте</title>
</head>
<body>



   
    <div class="all">
        <div class="head">
            <table>
                <tr>
                    <td><p><img class="setting" src="../Resources/faq-logo.png" alt="картинка отклеилась"></p></td>
                    <td><a href="mainpage.html" class="downspecial"><h1 class="mytopheader"><b>ФАКУЛЬТЕТ ИНФОРМАТИКИ (Online Courses)</b></h1></a></td>
                </tr>
            </table>
        </div>
        <div class="tabs">
            <a class="downspecial" href="entertosystem.html">Войти в систему</a>
        </div>
        <div class="leftblock" style="height: 80%">
            <div>
                <p><br><a class="leftmenu" href="http://www.ssau.ru/news/" target="_blank">Новости</a></p>
                <p><a class="leftmenu" href="http://www.ssau.ru" target="_blank">СГАУ</a></p>
                <p><a class="leftmenu" href="professors.html">Преподаватели</a></p>
                <p><a class="leftmenu" href="http://fit.ssau.ru/struktura/kafedryi/" target="_blank">Кафедры</a></p>
            </div>
        </div>
        <div class="whitetext" style="text-align: left;">
            <h2 class="loginheader" style="margin-bottom: 4%; margin-top: 3%">Поиск по сайту</h2>
            <div style="margin: 5%; ">
                
                <div style="width: 100%;  height:100%; margin-top: 4%; align-items: center; ">
                    <form id="form1" runat="server">


                         <div class="enterpart" style="width: 100%;  text-align: right; left: 7%; background-color:lightblue; ">
                        <p><b>Поиск пользователя по логину<b></p>
                         <br><br>
                        <asp:Label ID="Label1" runat="server" Text="Логин: " Font-Bold="False"></asp:Label>
                        <asp:TextBox ID="findByLoginTextBox" runat="server" Width="130px"></asp:TextBox>
                         <br><br>
                        <asp:Button ID="findByLoginButton" runat="server" Text="Найти" onclick="findByLoginButton_Click"/>
                         <br><br>
                       
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="578px"> <%--DataSourceID="SqlDataSource1"--%>                     
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
                        <br><br><br>

                     <div class="enterpart" style="width: 100%;text-align: right; left: 7%;background-color:lightblue; ">
                        <p><b>Поиск пользователя по фамилии и имени<b></p>
                         <br><br>
                        <asp:Label ID="findSurnamelbl" runat="server" Text="Фамилия: " Font-Bold="False"></asp:Label>
                        <asp:TextBox ID="findSurnameTextBox" runat="server" Width="130px"></asp:TextBox>
                         <br><br>
                        <asp:Label ID="findUserNamelbl" runat="server" Font-Bold="False" Font-Size="Medium" Text="Имя: "></asp:Label>
                        <asp:TextBox ID="findUserNameTextBox" runat="server" Height="16px" Width="130px"></asp:TextBox>
                         <br><br>
                        <asp:Button ID="findUserButton" runat="server" Text="Найти" onclick="findUserButton_Click" />
                         <br><br>
                       
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="578px"> <%--DataSourceID="SqlDataSource1"--%>                     
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


                    
                        
                        
                    </form>
                </div>

                

                <p class="about">
                    Сайт предназначен для удаленного обучения студентов, магистров и аспирантов. Хранит множество полезных материалов и призван упростить и без того нелегкий процесс обучения. В качестве примера текста взят отрывок истории факультета.отовки специалистов по электронно–вычислительным машинам, прикладной математике, программированию, информационным технологиям, а также переподготовки специалистов в области вычислительной техники, автоматизированного проектирования, автоматизированных систем научных исследований,
                    занимающихся решением прикладных задач с использованием средств вычислительной техники.
                </p>
                <p class="about">
                    Для решения этих задач в 1971 году в КуАИ началась подготовка специалистов по специальности 0647 – прикладная математика (инженер-математик) и 0646 – автоматизированные системы управления (инженер-системотехник). Первые студенты были переведены на второй курс этих специальностей с первого и пятого факультетов соответственно. Для организации подготовки в рамках факультета № 5 было создано отделение, руководителем которого был назначен доцент Сойфер В.А., ныне член–корреспондент РАН, президент СГАУ;
                    открыты новые кафедры автоматизированных систем управления (1972 г., зав. кафедрой доцент Виттих В.А.) и прикладной математики (1975 г., зав. кафедрой профессор Соллогуб А.В.). 1975 год - год первого выпуска инженеров и год официального создания 6 факультета. Первоначальное название факультета – факультет системотехники, в 1993 г.
                    переименован в факультет информатики.
                </p>
                <p class="about">Деканы факультета:</p>
                <p class="about">1975–1983 гг. Сойфер Виктор Александрович, д.т.н., профессор</p>
                <p class="about">1983–1987 гг. Виттих Владимир Андреевич, д.т.н., профессор</p>
                <p class="about">1988–1989 гг. Дубина Сергей Митрофанович, к.т.н., доцент</p>
                <p class="about">1989–2005 гг. Прохоров Сергей Антонович, д.т.н., профессор</p>
                <p class="about">2005г. – по н. вр. Коломиец Эдуард Иванович, к.ф.-м.н., доцент</p>
            </div>
        </div>
        <div class="downblock">
            <a class="downspecial" href="http://www.ssau.ru/info/" target="_blank">Об университете</a>
            <a class="downspecial" href="http://www.ssau.ru" target="_blank">Полезные ссылки</a>
            <a class="downspecial" href="http://www.ssau.ru/info/contacts/" target="_blank">Контакты</a>
            <a class="downspecial" href="#">О сайте</a>
        </div>
    </div>



    </body>
</html>