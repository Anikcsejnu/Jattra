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

public partial class postReview : System.Web.UI.Page
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
        
        if (HttpContext.Current.Session["suser"] == null)
        {

            Response.Redirect("~/Signup.aspx");

        }
        else
        {
            //lblUser.Text = HttpContext.Current.Session["suser"].ToString();
            string user = "<a href=\"viewProfile.aspx\">" + HttpContext.Current.Session["suser"].ToString() + "</a>";
            //vUserName.InnerHtml = "<a href=\"viewProfile.aspx\">" + HttpContext.Current.Session["suser"].ToString() + "</a>";
            vUserName.InnerHtml = user;

        }
    }

    bool CurrentFrame;
    //public void Authenticate(string usr, string psw) //user Authentication funcation
    //{
    //    string strConn;
    //    strConn = "Data Source=localhost;Initial Catalog=travel;User ID='" + usr + "';Password='" + psw + "'";
    //    SqlConnection Conn = new SqlConnection(strConn);
    //    try
    //    {
    //        Conn.Open();

    //        CurrentFrame = true; //set current Name true when authenticate
    //    }
    //    catch (Exception ex)
    //    {
    //        CurrentFrame = false;//set current Name false when authentication fail
    //    }
    //}

    protected void btnPostReview_Click(object sender, EventArgs e)
    {


        //vMsg.ShowMsg("Thanks for Joining With Us");
        

       
       
            string vUser = HttpContext.Current.Session["suser"].ToString();
            string strpnt = txtStartingPoint.Text;
            string Despnt = txtDestination.Text;
            string NOplace = NumberofPlace.Value;
            string Rdetails = txtDetailReview.Value;
            string date = txtcalendar.Text;
            string Days = txtDays.Text;
            string cost = txtcost.Value;

            SqlConnection Conn = new SqlConnection();


            string vSQL = "INSERT INTO [travel].[dbo].[tblReviewInfo](UserName, StartPoint, Destination, NumberOfplace, Review_details, Date, Duration, Cost)" +
             "VALUES('" + vUser + "','" + strpnt + "','" + Despnt + "','" + NOplace + "','" + Rdetails + "','" + date + "','" + Days + "','" + cost + "')";
            vConn.cnnAdmin(vSQL);
            vMsg.ShowMsg("Thanks For Your contribution");
            Response.Redirect("~/Default.aspx");
        
        //string strpnt = txtStartingPoint.Text;
        //string Despnt = txtDestination.Text;
        //string NOplace = NumberofPlace.Value;
        //string Rdetails = txtDetailReview.Value;
        //string date = txtcalendar.Text;
        //string Days = txtDays.Text;
        //string cost = txtcost.Value;

        //SqlConnection Conn = new SqlConnection();


        //string vSQL = "INSERT INTO [travel].[dbo].[tblReviewInfo](UserName, StartPoint, Destination, NumberOfplace, Review_details, Date, Duration, Cost)" +
        // "VALUES('" + vUser + "','" + strpnt + "','" + Despnt + "','" + NOplace + "','" + Rdetails + "','" + date + "','" + Days + "','" + cost + "')";
        //vConn.cnnAdmin(vSQL);
        
    }


}