<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="WebApplication3.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            <h2 class="loginheader" style="margin-bottom: 4%; margin-top: 3%">О сайте</h2>
            <div style="margin: 5%">








    <div style="width: 522px">
     <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionToAccessDBString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:MyConnectionToAccessDBString.ProviderName %>" SelectCommand="SELECT [Id], [Login], [Email], [FirstName], [UserName], [SecondName] FROM [MainTable]" DeleteCommand="DELETE FROM [MainTable] WHERE [Id] = ?" InsertCommand="INSERT INTO [MainTable] ([Login], [Email], [FirstName], [UserName], [SecondName]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE [MainTable] SET [Login] = ?, [Email] = ?, [FirstName] = ?, [UserName] = ?, [SecondName] = ? WHERE [Id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="SecondName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="SecondName" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        Список пользователей сайта:<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="455px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="Login" HeaderText="Логин пользователя" SortExpression="Login" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="FirstName" HeaderText="Фамилия" />
                <asp:BoundField DataField="UserName" HeaderText="Имя" SortExpression="UserName" />
                <asp:BoundField DataField="SecondName" HeaderText="Отчество" SortExpression="SecondName" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
        <asp:Label ID="lbl" runat="server"></asp:Label>
        <br />
    </form>
    </div>








                <p class="about">Сайт предназначен для удаленного обучения студентов, магистров и аспирантов. Хранит множество полезных материалов и призван упростить и без того нелегкий процесс обучения. В качестве примера текста взят отрывок истории факультета.</p>
                <p class="about">
                    Широкое внедрение средств вычислительной техники во все отрасли народного хозяйства поставили перед высшей школой задачу подготовки специалистов по электронно–вычислительным машинам, прикладной математике, программированию, информационным технологиям, а также переподготовки специалистов в области вычислительной техники, автоматизированного проектирования, автоматизированных систем научных исследований,
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



        <div style="height: 77px; margin-top: 42px">

        </div>
    </body>
</html>