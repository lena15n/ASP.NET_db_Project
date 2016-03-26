using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebFormEnter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void submitall_ServerClick(object sender, EventArgs e)
        {
            string strOleDbConnection = WebConfigurationManager.ConnectionStrings["MyConnectionToAccessDBString"].ConnectionString;
            //"Provider=Microsoft.Jet.OLEDB.4.0; Data Source = |DataDirectory|\\myDB.accdb";
            OleDbConnection oleDbCon = null;

            try
            {
                oleDbCon = new OleDbConnection();
                oleDbCon.ConnectionString = strOleDbConnection;

                string query = "SELECT Count(t.Login) FROM MainTable t WHERE t.[Login] = ? AND t.[Password] = ?;";
                OleDbCommand cmd = new OleDbCommand(query, oleDbCon);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("Login", login.Text);
                cmd.Parameters.AddWithValue("Password", password.Text);
                oleDbCon.Open();
                int countOfFoundUsers = (int)cmd.ExecuteScalar();//ExecuteReader(); - простые селекты
                oleDbCon.Close();

                if (countOfFoundUsers > 0)
                {
                    Response.RedirectPermanent("/Pages/mainpage.html");
                    base.OnLoad(e);
                }
                else
                {
                    lbl_result.Text = "Такого пользователя не существует, \nпроверьте данные!";
                }               
            }
            catch (Exception ex)
            {
                lbl_result.Text = "При соединении с БД произошла ошибка ";
                lbl_result.Text += ex.Message;
            }
        }
    }
}