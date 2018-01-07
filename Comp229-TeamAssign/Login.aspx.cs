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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonLogIn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Comp229-TeamAssign"].ConnectionString);
            conn.Open();
            String checkUserquery = "select count(*) from UserInfo where Username='" + TextboxUser.Text + "'";
            SqlCommand comm = new SqlCommand(checkUserquery, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "Select Password from UserInfo where Username='" + TextboxUser.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextboxPassword.Text)
                {
                    Session["New"] = TextboxUser.Text;
                    Response.Write("Password is correct");

                    Response.Redirect("AddBooks.aspx");

                }
                else
                {
                    Response.Write("Password is not correct");
                }



            }
            else
            {
                Response.Write("Username is not correct");
            }

        }

    }
}