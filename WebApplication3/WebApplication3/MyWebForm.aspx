<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWebForm.aspx.cs" Inherits="WebApplication3.MyWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        Список пользователей сайта:<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="331px">
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
    
    </div>

        <div style="height: 77px; margin-top: 42px">



        </div>
    </form>
</body>
</html>
