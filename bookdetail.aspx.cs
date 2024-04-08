using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class bookdetail : System.Web.UI.Page
{
    public SqlConnection cnn;

    public void conn1()
    {
        string conString;
        conString = "Data Source=CCA40; Initial Catalog=Library; Integrated Security=true;";
        //conString = "Data Source=DESKTOP-3033PMB\\SQLEXPRESS; Initial Catalog=Library; Integrated Security=true;";
        cnn = new SqlConnection(conString);
        cnn.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        conn1();
        string strSQL = "select * from books";
        DataSet objdataset = new DataSet();
        //sqlConnection objcon = new OleDbConnection(strConnection);
        SqlDataAdapter objadapter = new SqlDataAdapter(strSQL, cnn);
        objadapter.Fill(objdataset, "sdas");
        DataView objdataview = new DataView(objdataset.Tables["sdas"]);
        GridView1.DataSource = objdataview;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn1();
        string insertQuery = "insert into books (BookName,Catagory,Author,ISBN,Price) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        SqlCommand cmd = new SqlCommand(insertQuery, cnn);
        cmd.ExecuteNonQuery();
        Response.Write("<h5>" + " Book Sucessfully Registered.. " + "</h5>");
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox5.Text = " ";
        string strSQL = "select * from books";
        DataSet objdataset = new DataSet();
        //sqlConnection objcon = new OleDbConnection(strConnection);
        SqlDataAdapter objadapter = new SqlDataAdapter(strSQL, cnn);
        objadapter.Fill(objdataset, "sdas");
        DataView objdataview = new DataView(objdataset.Tables["sdas"]);
        GridView1.DataSource = objdataview;
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("book.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("bookupdate.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("book.aspx");
    }

}