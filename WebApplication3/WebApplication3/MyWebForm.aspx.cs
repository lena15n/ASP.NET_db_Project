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
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string strOleDbConnection = WebConfigurationManager.ConnectionStrings["MyConnectionToAccessDBString"].ConnectionString;
            //"Provider=Microsoft.Jet.OLEDB.4.0; Data Source = |DataDirectory|\\myDB.accdb";
            OleDbConnection oleDbCon = null;


            try
            {
                oleDbCon = new OleDbConnection();
                oleDbCon.ConnectionString = strOleDbConnection;
                oleDbCon.Open();

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





                lbl.Text = "<b>Сервер:</b>" + oleDbCon.ServerVersion;
                lbl.Text += "</br><b>Соединение:</b>" + oleDbCon.ToString();
                lbl.Text += "</br><b>Состояние:</b>" + oleDbCon.State.ToString();
            }
            catch (Exception ex)
            {
                lbl.Text = "При соединении с БД произошла ошибка ";
                lbl.Text += ex.Message;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}