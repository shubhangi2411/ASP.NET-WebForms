using System;
using System.Web.UI;

namespace WebFormsApplication
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // divMessage.Visible = false;
            //divMessage.Attributes.Add("style", "color:blue");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format("You said yor name is{0} and email address is {1}, your fav color is {2}", Name.Text, Email.Text, ddlColor.SelectedValue);
            IdLiteral.Text = message;
        }
    }
}