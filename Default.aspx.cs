using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["StartPoint"] ="";
        Session["Destination"] = "";
    }

    protected void Page_INIT()
    {
        txtFrom.Text = "";
        txtTo.Text = "";

        Session["StartPoint"] = "";
        Session["Destination"] = "";

        if (HttpContext.Current.Session["suser"] == null)
        {
            //lblUser.Text = "";
            string value =  "<li><a href='Signup.aspx'>";
            value += "<i class='glyphicon glyphicon-user' style='padding-top: -11px;padding-left: 10px'></i></a></li>";
            vUserName.InnerHtml = "<a href=\"Signup.aspx\">" + value + "</a>";
        }
        else
        {
            //lblUser.Text = HttpContext.Current.Session["suser"].ToString();
            string user = "<a href=\"viewProfile.aspx\">" + HttpContext.Current.Session["suser"].ToString() + "</a>";
            //vUserName.InnerHtml = "<a href=\"viewProfile.aspx\">" + HttpContext.Current.Session["suser"].ToString() + "</a>";
            vUserName.InnerHtml =  user;
      
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Session["StartPoint"] = txtFrom.Text;
        Session["Destination"] = txtTo.Text;

        Response.Redirect("~/Review.aspx");
    }
}