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
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string cnn = "Data Source=DESKTOP-P714P32;Initial Catalog=JOINSDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(cnn);
            //  SqlCommand cmd = new SqlCommand("select* from empl",connection);
            SqlCommand cmd = new SqlCommand("sp_insert_empl", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            

            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
            cmd.Parameters.AddWithValue("@salary", txtSalary.Text);
         
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            var i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblMessage.Text = "Employee Added Successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = "Something Went Wrong !";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            connection.Close();
        }
    }
}