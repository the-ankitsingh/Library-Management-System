using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class student : System.Web.UI.Page
{
//    public SqlConnection cnn;
//    int f;
//    public void conn1()
//    {
//        string conString;
//        conString = "Data Source=CCA40; Initial Catalog=Library; Integrated Security=true;";
//        //conString = "Data Source=DESKTOP-3033PMB\\SQLEXPRESS; Initial Catalog=Library; Integrated Security=true;";
//        cnn = new SqlConnection(conString);
//        cnn.Open();
//    }
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        conn1();
//        string strSQL = "select * from student";
//        DataSet objdataset = new DataSet();
//        //sqlConnection objcon = new OleDbConnection(strConnection);
//        SqlDataAdapter objadapter = new SqlDataAdapter(strSQL, cnn);
//        objadapter.Fill(objdataset, "sdas");
//        DataView objdataview = new DataView(objdataset.Tables["sdas"]);
//        GridView1.DataSource = objdataview;
//        GridView1.DataBind();
//    }
//    protected void Button1_Click(object sender, EventArgs e)
//    {
//        f = 0;
//        SqlCommand ThisCOmmand = cnn.CreateCommand();
//        ThisCOmmand.CommandText = "select * from student";
//        SqlDataReader ThisReader = ThisCOmmand.ExecuteReader();
//        string a1 = TextBox1.Text;
//        while (ThisReader.Read())
//        {
//            if (a1.Equals(ThisReader["StudentId"]))
//            {
//                f = 1;
//                break;
//            }
//        }
//        ThisReader.Close();
//        cnn.Close();
//        if (f == 1)
//        {
//            ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Student ID Cannot Have Duplicate Value')", true);
//            TextBox1.Focus();
//        }
//        else
//        {
//            string a = TextBox2.Text.ToString();
//            conn1();
//            string insertQuery = "insert into student (StudentId,FullName,Email,Mobile,UserName,) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
//            SqlCommand cmd = new SqlCommand(insertQuery, cnn);
//            cmd.ExecuteNonQuery();
//            Response.Write("<h5>" + a.ToString() + " " + "Your Registration Sucessful.." + "</h5>");
//            TextBox1.Text = " ";
//            TextBox2.Text = " ";
//            TextBox3.Text = " ";
//            TextBox4.Text = " ";
//            TextBox5.Text = " ";
//            string strSQL = "select * from student";
//            DataSet objdataset = new DataSet();
//            //sqlConnection objcon = new OleDbConnection(strConnection);
//            SqlDataAdapter objadapter = new SqlDataAdapter(strSQL, cnn);
//            objadapter.Fill(objdataset, "sdas");
//            DataView objdataview = new DataView(objdataset.Tables["sdas"]);
//            GridView1.DataSource = objdataview;
//            GridView1.DataBind();
//        }
//    }
//    protected void Button4_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("studentdelete.aspx");
//    }
//    protected void Button3_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("studentdelete.aspx");
//    }
//    protected void Button2_Click(object sender, EventArgs e)
//    {
//        Response.Redirect("studentupdate.aspx");
//    }
}