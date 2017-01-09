using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["emailId"] = Txtemail.Text;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        // SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        SqlConnection con = new SqlConnection("Data Source=NAWAL\\SQLEXPRESS;Initial Catalog=WEB_DB;Integrated Security=True");
        con.Open();

         SqlDataAdapter Adpr = new SqlDataAdapter("select Email_Id,Password from Login_user where Email_Id=@Username and Password=@pwd", con);
         DataTable Dtab = new DataTable();      
        Adpr.SelectCommand.Parameters.AddWithValue("@pwd", TxtPwd.Text);
        Adpr.SelectCommand.Parameters.AddWithValue("@Username",Txtemail.Text);
        Adpr.Fill(Dtab);       
        if (Dtab.Rows.Count > 0)        
        {           
            Response.Write("Logged in succesfully");          
            if (Txtemail.Text == "admin@gmail.com")         
            {               
                Response.Redirect("Admin.aspx");               
                return;           
            }            
            else            
            { 
                Response.Redirect("Default.aspx");          
                return;          
            }       
        }      
        else
        {          
          //  Response.Write("Incorect UserName Or Password");
            Laberrordisp.Text = "Incorect UserName Or Password";
            Laberrordisp.ForeColor = System.Drawing.Color.Red;
            Txtemail.Text = "";          
            TxtPwd.Text = "";    
        }   

    }
}