using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebFormsApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionString = WebConfigurationManager.ConnectionStrings["DBConnection"];
            using (SqlConnection conn = new SqlConnection(connectionString.ConnectionString))
            {
                try
                {
                    conn.Open();
                    ltConnMsg.Text = "Connection Successful";
                    try
                    {
                        SqlCommand cmd = new SqlCommand("SELECT Name,Color from NICKNAMES", conn);
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                ltOutput.Text += string.Format("<li>{0} {1}</li>", reader.GetString(0), reader.GetString(1));
                            }
                        }
                    }


                    catch (SqlException ex)
                    {
                        ltOutput.Text = "<li>" + "Select command Failed due to " + ex.Message + "</li>";
                    }
                }
                catch (SqlException ex)
                {
                    ltConnMsg.Text = "Connection Failed due to " + ex.Message;
                }
                finally
                {
                    conn.Close();
                    conn.Dispose();
                }
            }

        }
    }
}