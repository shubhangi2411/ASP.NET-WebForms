using System;

namespace WebFormsApplication
{
    public partial class PageLifeCycle : System.Web.UI.Page
    {
       

        protected void Page_PreInit(object sender, EventArgs e)
        {
            //The start stage is complete and page properties have been loaded and we enter the initialization Phase.
            //You now have access to properties such as Page.IsPostBack
            bool ispostback = Page.IsPostBack;
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            //All controls and control  properties have been initialized.
            //I can set control properties such as Text propertyof a label control.
            lblInit.Text = "I set this text during Page_Init";
        }

        protected void Page_InitComplete(object sender, EventArgs e)
        {
            //Everything has been initialized , this event can be used for tasks that require eveything to first be initialized.
        }

        protected void Page_PreLoad(object sender, EventArgs e)
        {
            //If you need to perform a task before the page load.
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //We are now in the load stage.
            //this is where you will perform most of your page related tasks such as:
            //Data binding to dropdowns and setting text

            lblPageLoad.Text = "I set the text during the Page Load";
            if (Page.IsPostBack)
                lblPostback.Text = "I set this text when the page posted back";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //We are now in the Pst Back Event Handling Stage.
            
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            //Use this method when you need to perform a task after the Page Load phase is complete.
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //We are now in the rendering phase.
            //Use this method if you need to  odify a control's markup output before it is rendered.
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            //use this method if you need to do final cleanup.
        }

    }
}