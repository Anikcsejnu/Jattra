using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using App_Code;
using System.IO;
using System.Collections.Generic;
using System.Collections;
using System.Data.OleDb;
using System.Threading;
using System.ComponentModel;
using Microsoft.VisualBasic;

using System.Collections;


public partial class Signup : System.Web.UI.Page
{
    Connection vConn = new Connection();
    Scriptclass vMsg = new Scriptclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_INIT()
    {
        Session["StartPoint"] = "";
        Session["Destination"] = "";
    }

    bool CurrentFrame;
    public void Authenticate(string usr, string psw) //user Authentication funcation
    {
        string strConn;
        strConn = "Data Source=localhost;Initial Catalog=travel;User ID='" + usr + "';Password='" + psw + "'";
        SqlConnection Conn = new SqlConnection(strConn);
        try
        {
            Conn.Open();

            CurrentFrame = true; //set current Name true when authenticate
        }
        catch (Exception ex)
        {
            CurrentFrame = false;//set current Name false when authentication fail
        }
    }
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        Session["suser"] = txtUserName.Value;
        Session["spass"] = txtPassword.Value;

        string vUserName = txtUserName.Value;
        string vPass = txtPassword.Value;

        Authenticate(vUserName, vPass);
        if (CurrentFrame != false)
        {
            Response.Redirect("~/Default.aspx");
        }
        else
        {
            vMsg.ShowMsg("Invalid User Name or Password");
        }
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        string vName = txtName.Value;
        string vUserName = txtUser.Value;
        string vPass = txtPass.Value;
        string vPassR = txtRepeatPass.Value;
        string vContact = txtContact.Value;
        string vEmail = txtEmail.Value;

        string vSQL = "SELECT * FROM [travel].[dbo].[tblUserInfo] where UserName ='" + vUserName + "'";

        SqlDataReader srdr = vConn.cnnAdmin(vSQL);
        
        if (srdr.HasRows)
        {
            vMsg.ShowMsg("User Name Already Exists");  
        }
        else
        {
            if (vPass == vPassR)
            {
                vSQL = string.Format(@"IF NOT EXISTS (SELECT name  FROM master.sys.server_principals WHERE name = '{0}')
                                    BEGIN
                                        CREATE LOGIN {0} WITH PASSWORD = N'{1}'
                                    END", vUserName, vPass);
                vConn.cnnAdmin(vSQL);

                using (SqlConnection conn = new SqlConnection("server=localhost; database=travel; User ID=sa;Password=asdf1234; Integrated Security=SSPI;"))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(" USE travel " + "CREATE USER " + vUserName + " FOR LOGIN " + vUserName/* + "; " + "GO"*/, conn);
                    cmd.ExecuteNonQuery();


                    conn.Close();
                }

                vSQL = "INSERT INTO [travel].[dbo].[tblUserInfo](Name, UserName, EmailAddress, ContactNo)VALUES('" + vName + "','" + vUserName + "','" + vEmail + "','" + vContact + "')";

                vConn.cnnAdmin(vSQL);

                Session["suser"] = vUserName;

                Response.Redirect("~/Default.aspx");

                //vMsg.ShowMsg("Thanks for Joining With Us");
            }
            else
            {
                vMsg.ShowMsg("Password And Retype Password Not Match");
            }
        }
    }
}