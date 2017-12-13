using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamAssign
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Page.Title)
            {
                case "Home Page":
                    Page.Title = string.Format("Books Library");
                    break;
                case "About":
                    Page.Title = string.Format("List of books");
                    break;
                case "Contact":
                    Page.Title = string.Format("Contact Us");
                    break;
            }
        }
    }
}