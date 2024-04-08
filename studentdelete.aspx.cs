using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class studentdelete : System.Web.UI.Page
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
        {
            conn1();
            string strSQL = "select * from student";
            DataSet objdataset = new DataSet();
            //sqlConnection objcon = new OleDbConnection(strConnection);
            SqlDataAdapter objadapter = new SqlDataAdapter(strSQL, cnn);
            objadapter.Fill(objdataset, "sdas");
            DataView objdataview = new DataView(objdataset.Tables["sdas"]);
            GridView1.DataSource = objdataview;
            GridView1.DataBind();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text.ToString();
        conn1();
        string SQ = "select * from student where StudentId='" + TextBox1.Text.ToString() + "'";
        SqlDataAdapter sda = new SqlDataAdapter(SQ, cnn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count != 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        }
        else
            Response.Write("<h5>" + a.ToString() + " You have No Exisisting Record" + "</h5>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string a = TextBox1.Text.ToString();
        conn1();
        string DQ = "delete from student where StudentId='" + TextBox1.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(DQ, cnn);
        cmd.ExecuteNonQuery();
        Response.Write("<h5>" + a.ToString() + " Your Record Sucessfully Deleted " + "</h5>");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        conn1();
        string strSQL = "select * from student";
        DataSet objdataset = new DataSet();
        //sqlConnection objcon = new OleDbConnection(strConnection);
        SqlDataAdapter objadapter = new SqlDataAdapter(strSQL, cnn);
        objadapter.Fill(objdataset, "sdas");
        DataView objdataview = new DataView(objdataset.Tables["sdas"]);
        GridView1.DataSource = objdataview;
        GridView1.DataBind();
    }
}