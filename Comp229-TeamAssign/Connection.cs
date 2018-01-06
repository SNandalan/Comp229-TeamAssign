using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;


namespace Comp229_TeamAssign
{
    public class Connection
    {
            private static SqlConnection cn;
            private static SqlCommand cmd;

            static ConnectionClass()
            {
                cn = new SqlConnection(@"Data Source=);
            }
            public static void AddInfo(Info info)
            {
            //string query = ;
                 //string.Format(@"Insert into  Values ({0}, '{1}', '{2}', '{3}', '{4}')",
                 // info.ClientID, info.FirstName, info.LastName, info.PhoneNumber, info.Address);
                cmd = new SqlCommand(query, cn);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
                finally
                {
                    cn.Close();
                }
            }
        }
        protected void saveData_Click(object sender, EventArgs e)
        {
            try
            {
                int infoIDSaveBTN = Convert.ToInt32(txtInfoID.Text);
                string nameSaveBTN = txtName.Text;
                string lastNameSaveBTN = txtLastName.Text;
                string phoneNumberSaveBTN = txtPhoneNumber.Text;
                string addressSaveBTN = txtAddress.Text;

                Info infoSaveBTN = new Info(infoIDSaveBTN, nameSaveBTN, lastNameSaveBTN, phoneNumberSaveBTN, addressSaveBTN);
                ConnectionClass.AddInfo(infoSaveBTN);
                lblStatus.Visible = true;
                lblStatus.Text = "Uploaded Successfully!";
            }
            catch
            {
                lblStatus.Visible = true;
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Upload Failed!";
            }
        }
    }
}