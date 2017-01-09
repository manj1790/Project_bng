using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
       // SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        SqlConnection con = new SqlConnection("Data Source=NAWAL\\SQLEXPRESS;Initial Catalog=WEB_DB;Integrated Security=True");
        con.Open();
         //string rdbtn;         
       // SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=Sang_Travels;Integrated Security=True;Pooling=False"); 

        SqlCommand cmd = new SqlCommand("insert into Login_user values(@username,@email,@phone,@pwd)", con);         
        //if (RdbtnMale.Checked)           
        //  rdbtn = "Male";         
        //else             
        //rdbtn = "Female";         
        //Session["Password"] = TxtPwd.Text;        
        cmd.Parameters.AddWithValue("@Email",TxtEmail.Text.Trim());         
        cmd.Parameters.AddWithValue("@pwd",Txtpwd.Text.Trim());
        cmd.Parameters.AddWithValue("@phone","");
        cmd.Parameters.AddWithValue("@username","");
        cmd.ExecuteNonQuery();         
        Response.Redirect("Thankyou.aspx");         
        //Label1.Text = "Thank you for Register with us.";              
        con.Close(); 
    }
}