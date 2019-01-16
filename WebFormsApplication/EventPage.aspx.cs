using System;
using System.Collections.Generic;

namespace WebFormsApplication
{

    public partial class EventPage : System.Web.UI.Page
    {
        private List<MyEvent> myEvents;   //for binding list to repeater
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["MyEvents"] = new List<MyEvent>();
            }
        }
        protected void btnEvent_Click(object sender, EventArgs e)
        {
            UpdateEvents();
            BindEvent();
        }

        //This method will be called everytime the button is clicked
        private void UpdateEvents()
        {
            if (Session["MyEvents"] != null)
            {
                myEvents = (List<MyEvent>)Session["MyEvents"];
            }
            else
                myEvents = new List<MyEvent>();
            myEvents.Add(new MyEvent(txtEvent.Text, calenderEvent.SelectedDate));
            Session["MyEvents"] = myEvents;
        }

        private void BindEvent()
        {
            rptEvent.DataSource = myEvents;
            rptEvent.DataBind();
        }

    }
    public class MyEvent
    {
        public string EventName { get; private set; }
        public string EventDate { get; private set; }

        public MyEvent(string eventName, DateTime eventDate)
        {
            EventName = eventName;
            EventDate = eventDate.ToShortDateString();
        }

    }
}