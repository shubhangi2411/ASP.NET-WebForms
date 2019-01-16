using System;

namespace WebFormsApplication
{
    public partial class ViewStateExample : System.Web.UI.Page
    {
        string literalMsg = "Fill out this Form. Don't Worry ,your data won't get lost when you submit. We have View State";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                ltPostback.Text = "The Page is Postback";
            }
            else
            {
                ltPostback.Text = literalMsg;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}