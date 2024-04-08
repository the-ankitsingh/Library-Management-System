using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class registration : System.Web.UI.Page
{
    public SqlConnection cnn;
    int f;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void conn1()
    {
        string conString;
        conString = "Data Source=CCA40; Initial Catalog=Library; Integrated Security=true;";
        //conString = "Data Source=DESKTOP-3033PMB\\SQLEXPRESS; Initial Catalog=Library; Integrated Security=true;";
        cnn = new SqlConnection(conString);
        cnn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn1();
        f = 0;
        SqlCommand ThisCOmmand = cnn.CreateCommand();
        ThisCOmmand.CommandText = "select * from admin";
        SqlDataReader ThisReader = ThisCOmmand.ExecuteReader();
        string a1 = TextBox1.Text;
        while (ThisReader.Read())
        {
            if (a1.Equals(ThisReader["UserId"]))
            {
                f = 1;
                break;
            }
        }
        ThisReader.Close();
        cnn.Close();
        if (f == 1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('User ID Cannot Have Duplicate Value')", true);
            TextBox1.Focus();
        }
        else
        {
            string a = TextBox1.Text.ToString();
            conn1();
            string insertQuery = "insert into admin (username,password,designation) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "')";
            SqlCommand cmd = new SqlCommand(insertQuery, cnn);
            cmd.ExecuteNonQuery();
            Response.Write("<h2>" + a.ToString() + " " + "Your Registration Sucessful.." + "</h2>");
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            DropDownList1.SelectedItem.Text = "";
        }
    }
}