using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class MyWebForm : System.Web.UI.Page
    {

        private string strOleDbConnection = WebConfigurationManager.ConnectionStrings["MyConnectionToAccessDBString"].ConnectionString;
            //"Provider=Microsoft.Jet.OLEDB.4.0; Data Source = |DataDirectory|\\myDB.accdb";
        private OleDbConnection oleDbCon = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            


            try
            {
                

                /* SqlCommand cmd_SQL = new SqlCommand("Select * From MainTable", sqlCon);
                 cmd_SQL.CommandType = CommandType.Text;

                 SqlCommand cmd_Proc = new SqlCommand("GetGoods", sqlCon);
                 cmd_Proc.CommandType = CommandType.StoredProcedure;

                 SqlDataReader rdr_SQL = cmd_SQL.ExecuteReader();
                 StringBuilder strResult = new StringBuilder("");
                 while (rdr_SQL.Read())
                 {
                     strResult.Append("<li>");
                     strResult.Append("Код товара <b>");
                     strResult.Append(rdr_SQL["КодТовара"]);
                     strResult.Append("</b>, Наименование товара <b>");
                     strResult.Append(rdr_SQL.GetString(1));
                     strResult.Append("</b>");
                     strResult.Append(", Цена <b>");
                     strResult.Append(rdr_SQL.GetDouble(2));
                     strResult.Append("</b></li>");
                 }
                 rdr_SQL.Close();

                 lbl.Text = strResult.ToString();
                 */





                //lbl.Text = "<b>Сервер:</b>" + oleDbCon.ServerVersion;
                //lbl.Text += "</br><b>Соединение:</b>" + oleDbCon.ToString();
                //lbl.Text += "</br><b>Состояние:</b>" + oleDbCon.State.ToString();
            }
            catch (Exception ex)
            {
                //lbl.Text = "При соединении с БД произошла ошибка ";
                //lbl.Text += ex.Message;
            }
        }

        //public void InsertUserData(User user)
        //{


        //}






        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void findUserButton_Click(object sender, EventArgs e)
        {
            string query = "SELECT [Login] as Логин, [Surname] as Фамилия, [UserName] as Имя, [LastName] as Отчество, [Email] FROM [MainTable] WHERE (([Surname] = ?) AND ([UserName] = ?))";

            DataSet dsPerson = new DataSet();

            oleDbCon = new OleDbConnection();
            oleDbCon.ConnectionString = strOleDbConnection;

            

            OleDbCommand cmd = new OleDbCommand(query, oleDbCon);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("Surname", findSurnameTextBox.Text);
            cmd.Parameters.AddWithValue("UserName", findUserNameTextBox.Text);

            oleDbCon.Open();
            OleDbDataReader data = cmd.ExecuteReader();            

            GridView1.DataSource = data;
            GridView1.DataBind();

            oleDbCon.Close();


            oleDbCon.Close();
        }

        protected void findByLoginButton_Click(object sender, EventArgs e)
        {
            string query = "SELECT [Login] as Логин, [Surname] as Фамилия, [UserName] as Имя, [LastName] as Отчество, [Email] FROM [MainTable] WHERE ([Login] = ?)";

            DataSet dsPerson = new DataSet();

            oleDbCon = new OleDbConnection();
            oleDbCon.ConnectionString = strOleDbConnection;

            OleDbCommand cmd = new OleDbCommand(query, oleDbCon);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("Login", findByLoginTextBox.Text);

            oleDbCon.Open();
            OleDbDataReader data = cmd.ExecuteReader();

            GridView1.DataSource = data;
            GridView1.DataBind();

            oleDbCon.Close();
        }
    }
}