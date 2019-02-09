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

public partial class viewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Connection vConn = new Connection();
    protected void Page_INIT()
    {
        Session["StartPoint"] = "";
        Session["Destination"] = "";

        if (HttpContext.Current.Session["suser"] == null)
        {

            Response.Redirect("Signup.aspx");
        }
        else
        {
            string vUser = HttpContext.Current.Session["suser"].ToString();
            //lblUser.Text = HttpContext.Current.Session["suser"].ToString();
            string user = "<a href=\"#\">" + vUser + "</a>";
            //vUserName.InnerHtml = "<a href=\"viewProfile.aspx\">" + HttpContext.Current.Session["suser"].ToString() + "</a>";
            vUserName.InnerHtml = user;

            UserInformation(vUser);
        }
    }

    protected void btnSignout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Default.aspx");
    }

    protected void UserInformation(string vUser)
    {
        string SQL = "SELECT [UserID],[Name],[UserName],[EmailAddress],[ContactNo]FROM [travel].[dbo].[tblUserInfo] where UserName ='"+ vUser +"'";

        SqlDataReader srdr = vConn.cnnAdmin(SQL);

        if (srdr.HasRows)
        {
            while(srdr.Read())
            {
                lblName.Text = srdr["Name"].ToString();
                lblEmail.Text = srdr["EmailAddress"].ToString();
                lblContact.Text = srdr["ContactNo"].ToString(); 
            }
        }
        else
        {
            lblName.Text = "";
            lblEmail.Text = "";
            lblContact.Text = "";
        }
    }
}