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

public partial class Review : System.Web.UI.Page
{
    Connection vConn = new Connection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_INIT()
    {
        if (!IsPostBack)
        {
            ShowReview();
        }
    }

    protected void ddlCriteria_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowReview();
    }
    protected void ddlSort_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowReview();
    }

    protected void ShowReview()
    {
        string vSQL = "";

        string vStartPoint = Session["StartPoint"].ToString();
        string vDestination = Session["Destination"].ToString();

        string vSearch = " 1=1 ";

        if (vStartPoint.Length > 0)
        {
            vSearch = vSearch + " and StartPoint = '" + vStartPoint + "'";
        }
        
        if (vDestination.Length > 0)
        {
            vSearch = vSearch + " and Destination = '" + vDestination + "'";
        }


        if (ddlCriteria.Text == "Date" && ddlSort.Text == "Asc")
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where " + vSearch + " ORDER BY Date ASC";
        }
        else if (ddlCriteria.Text == "Date" && ddlSort.Text == "Dsc")
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where " + vSearch + " ORDER BY Date DESC";
        }
        else if (ddlCriteria.Text == "Place" && ddlSort.Text == "Asc")
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where " + vSearch + " ORDER BY Place ASC";
        }
        else if (ddlCriteria.Text == "Place" && ddlSort.Text == "Dsc")
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where " + vSearch + " ORDER BY Place DESC";
        }
        else if (ddlCriteria.Text == "Cost" && ddlSort.Text == "Asc")
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where " + vSearch + " ORDER BY Cost ASC";
        }
        else if (ddlCriteria.Text == "Cost" && ddlSort.Text == "Dsc")
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where " + vSearch + " ORDER BY Cost DESC";
        }
        else
        {
            vSQL = "SELECT        ReviewId, StartPoint, Destination, NumberOfplace, Date, Duration, Cost, CONVERT(decimal(18, 2), Cost / NumberOfplace) AS Place FROM Travel.dbo.tblReviewInfo where 1=2 ORDER BY Place DESC";
        }

        SqlDataReader srdr = vConn.cnnAdmin(vSQL);

        grdData.DataSource = srdr;
        grdData.DataBind();
    }

    protected void grdData_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow || e.Row.RowType == DataControlRowType.Header || e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[1].Visible = false;
            e.Row.Cells[8].Visible = false;
        }
    }
    protected void grdData_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtReview.Text = ""; 

        GridViewRow row = grdData.SelectedRow;

        string vReviewID = row.Cells[1].Text;

        string vSQL = "Select * FROM Travel.dbo.tblReviewInfo where ReviewId = '" + vReviewID + "'";

        SqlDataReader srdr = vConn.cnnAdmin(vSQL);

        if (srdr.HasRows)
        {
            while (srdr.Read())
            {
                txtReview.Text = "Date :" + Convert.ToDateTime(srdr["Date"].ToString()).ToString("MMMM dd, yyyy");
                txtReview.Text = txtReview.Text + Environment.NewLine + srdr["Review_details"].ToString();
                txtReview.Text = txtReview.Text + Environment.NewLine + "Start Point :" + srdr["StartPoint"].ToString();
                txtReview.Text = txtReview.Text + Environment.NewLine + "Destination :" + srdr["Destination"].ToString();
                txtReview.Text = txtReview.Text + Environment.NewLine + "Number Of place :" + srdr["NumberOfplace"].ToString();
                txtReview.Text = txtReview.Text + Environment.NewLine + "Duration :" + srdr["Duration"].ToString();
                txtReview.Text = txtReview.Text + Environment.NewLine + "Cost :" + srdr["Cost"].ToString();
 
            }
        }
    }
}