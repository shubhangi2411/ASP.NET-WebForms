using System;

namespace WebFormsApplication
{
    public partial class ProjectCalculation : System.Web.UI.Page
    {
        public decimal baseprice = 100.00m;
        protected void Page_Load(object sender, EventArgs e)
        {
            ltBasePrice.Text = baseprice.ToString();
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProjectFees.States states = new ProjectFees.States();
            decimal fee = states.GetFeeForState(ddlStates.SelectedValue);
            decimal finalfee = baseprice + fee;
            ltCustomPrice.InnerText = finalfee.ToString("C");
        }
    }
}