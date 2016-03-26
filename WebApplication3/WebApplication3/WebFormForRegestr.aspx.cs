using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebFormForRegestr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void submit_ServerClick(object sender, EventArgs e)
        {
            string strOleDbConnection = WebConfigurationManager.ConnectionStrings["MyConnectionToAccessDBString"].ConnectionString;
            //"Provider=Microsoft.Jet.OLEDB.4.0; Data Source = |DataDirectory|\\myDB.accdb";
            OleDbConnection oleDbCon = null;

            try
            {
                oleDbCon = new OleDbConnection();
                oleDbCon.ConnectionString = strOleDbConnection;
                

                string surname = this.surname.Text;//Request.Form["surname"];
                string name = this.name.Text;
                string lastname = this.lastname.Text;
                string login = this.login.Text;
                string password = this.password1.Text;
                string mail = this.mail.Text;
                string phone = this.phone.Text;

                string query = "INSERT INTO MainTable ([Login], [Password], [Email], [Surname], [UserName], [LastName], [Phone])" + 
                   "VALUES (?, ?, ?, ?, ?, ?, ?)";

                OleDbCommand addNewUserCommand = new OleDbCommand(query, oleDbCon);
                addNewUserCommand.CommandType = CommandType.Text;

                addNewUserCommand.Parameters.AddWithValue("Login", login);
                addNewUserCommand.Parameters.AddWithValue("Password", password);
                addNewUserCommand.Parameters.AddWithValue("Email", mail);
                addNewUserCommand.Parameters.AddWithValue("Surname", surname);
                addNewUserCommand.Parameters.AddWithValue("UserName", name);
                addNewUserCommand.Parameters.AddWithValue("LastName", lastname);
                addNewUserCommand.Parameters.AddWithValue("Phone", phone);
                oleDbCon.Open();

                int count = addNewUserCommand.ExecuteNonQuery();





                lbl11.Text = surname;

                oleDbCon.Close();
            }
            catch (Exception ex)
            {
                lbl11.Text = "При соединении с БД произошла ошибка ";
                lbl11.Text += ex.Message;
            }
        }
    }         

}