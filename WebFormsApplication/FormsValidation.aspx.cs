using System;
using System.Web.UI;

namespace WebFormsApplication
{
    public partial class FormsValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                LtMessage.Text = "Page is Valid";
            }

        }
    }
}