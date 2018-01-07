using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class About : Page
    {
        /// <summary>
        /// This is my page load
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBookData();
            }
        }
        private void BindBookData()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229-TeamAssign"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand comm = new SqlCommand("select * from MyBooks", conn);
            try
            {
                // Opening database connection
                conn.Open();
                SqlDataReader reader = comm.ExecuteReader();
                BooksGridView.DataSource = reader;
                BooksGridView.DataBind();
                reader.Close();
            }
            finally
            {
                //Closing database connection
                conn.Close();
            }
        }
    }
}