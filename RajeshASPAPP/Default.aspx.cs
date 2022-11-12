using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RajeshASPAPP
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEmployee();
        }

        protected void LoadEmployee()
        {

            string cnn = "Data Source=DESKTOP-P714P32;Initial Catalog=JOINSDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(cnn);
          //  SqlCommand cmd = new SqlCommand("select* from empl",connection);
           SqlCommand cmd = new SqlCommand("sp_get_empl ", connection);
           cmd.CommandType = CommandType.StoredProcedure;
         
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            GVEmployee.DataSource = cmd.ExecuteReader();
            GVEmployee.DataBind();
            connection.Close();
           
        }
    }
}