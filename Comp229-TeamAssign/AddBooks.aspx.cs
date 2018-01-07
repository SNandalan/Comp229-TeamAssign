using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                string titleSave = txtBookTitle.Text;
                string authorSave = txtAuthorName.Text;
                string ISBNSave = txtISBN.Text;
                string genreSave = txtGenre.Text;
                string ratingSave = txtRating.Text;

                Info infoSaveBTN = new Info(titleSave, authorSave, ISBNSave, genreSave, ratingSave);
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