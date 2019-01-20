using System;

namespace WebFormsApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmsg.Visible = false;
        }

        protected void btnSuccess_Click(object sender, EventArgs e)
        {
            string message = string.Empty;
            try
            {
                decimal expectedDecimalValue = decimal.Parse(txtdecimal.Text);
                message = "Your Decimal is " + expectedDecimalValue;
            }
            catch(Exception ex)
            {
                message = "Error occured was : "+ex.Message;
            }


            lblmsg.Text = message;
            lblmsg.Visible = true;
        }
    }
}