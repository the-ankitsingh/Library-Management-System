using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class login : System.Web.UI.Page
{
    public SqlConnection cnn;
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
        HttpCookie Cookie = Request.Cookies["Preference"];
        if (Cookie == null)
        {
            Cookie = new HttpCookie("Preference");
        }
        Cookie["ID"] = TextBox1.Text;
        Cookie.Expires = DateTime.Now.AddSeconds(60);
        Response.Cookies.Add(Cookie);

        string p = TextBox1.Text.ToString();

        conn1();
        string SQ = "select * from admin where username='" + TextBox1.Text + "' and password ='" + TextBox2.Text + "' and designation='" + DropDownList1.Text + "'";
        SqlDataAdapter sda = new SqlDataAdapter(SQ, cnn);
        DataSet dt = new DataSet();
        sda.Fill(dt);
        if (dt.Tables[0].Rows.Count != 0)
        {
            Response.Redirect("dashboard.aspx?a1=" + p);
        }
        else
        {
            Response.Write("<h3>" + "Given Credentials Is Not Valid.." + "</h3>");
        }
    }
}