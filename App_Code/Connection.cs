namespace App_Code
{
    using System;
    using System.Data;
    using System.Configuration;
    using System.Linq;
    using System.Web;
    using System.Web.Security;
    using System.Web.UI;
    using System.Web.UI.HtmlControls;
    using System.Web.UI.WebControls;
    using System.Web.UI.WebControls.WebParts;
    using System.Xml.Linq;
    using System.Data.SqlClient;
    using System.Collections.Generic;

    using System.Security.Cryptography;
    using System.IO;
    using System.Text;

    /// <summary>
    /// Summary description for Connection
    /// </summary>
    public class Connection
    {
        public Connection()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public SqlDataReader cnnAdmin(String vDataReader)
        {
            string strConnAdmin;
            SqlDataReader ConnReader;

            strConnAdmin = "Data Source=localhost;Initial Catalog=travel;User ID='sa';Password='asdf1234';Pooling=false;";

            SqlConnection ConnAdmin = new SqlConnection(strConnAdmin);
            SqlCommand comAdmin = new SqlCommand(vDataReader, ConnAdmin);
            ConnAdmin.Open();
            ConnReader = comAdmin.ExecuteReader(CommandBehavior.CloseConnection);
            return ConnReader;
        }
    }
}