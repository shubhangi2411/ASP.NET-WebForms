using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindDataToGridView();
            }
        }


        public void BindDataToGridView()
        {
            var connectionString = WebConfigurationManager.ConnectionStrings["DBConnection"];
            using (SqlConnection conn = new SqlConnection(connectionString.ConnectionString))
            {


                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT ColorId,Name,Hex from COLORS", conn);
                    SqlDataAdapter adb = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adb.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        gvColors.DataSource = ds;
                        gvColors.DataBind();
                    }
                }


                catch (SqlException ex)
                {
                    ltError.Text = "Error Occured while Binding GridView" + ex.Message;
                }
                finally
                {
                    conn.Close();
                    conn.Dispose();
                }
            }

        }

        protected void gvColors_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ltError.Text = string.Empty;
            gvColors.EditIndex = e.NewEditIndex;
            BindDataToGridView();
        }

        protected void gvColors_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ltError.Text = string.Empty;
            GridViewRow gvRow = (GridViewRow)gvColors.Rows[e.RowIndex];
            HiddenField hdnColorId = (HiddenField)gvRow.FindControl("hdnColorId");
            TextBox txtName = (TextBox)gvRow.Cells[1].Controls[0];
            TextBox txtHex = (TextBox)gvRow.Cells[2].Controls[0];

            var connectionString = WebConfigurationManager.ConnectionStrings["DBConnection"];
            using (SqlConnection conn = new SqlConnection(connectionString.ConnectionString))
            {


                try
                {
                    conn.Open();
                    string sql = string.Format("UPDATE COLORS SET Name='{0}',Hex='{1}' WHERE ColorId={2}", txtName.Text, txtHex.Text, hdnColorId.Value);
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataAdapter adb = new SqlDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    gvColors.EditIndex = -1;
                    BindDataToGridView();
                }


                catch (SqlException ex)
                {
                    ltError.Text = "Error Occured while Updating GridView" + ex.Message;
                }
                finally
                {
                    conn.Close();
                    conn.Dispose();
                }
            }

        }


        protected void gvColors_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ltError.Text = string.Empty;
            GridViewRow gvRow = (GridViewRow)gvColors.Rows[e.RowIndex];
            HiddenField hdnColorId = (HiddenField)gvRow.FindControl("hdnColorId");

            var connectionString = WebConfigurationManager.ConnectionStrings["DBConnection"];
            using (SqlConnection conn = new SqlConnection(connectionString.ConnectionString))
            {


                try
                {
                    conn.Open();
                    string sql = string.Format("DELETE FROM COLORS WHERE ColorId={0}", hdnColorId.Value);
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataAdapter adb = new SqlDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    gvColors.EditIndex = -1;
                    BindDataToGridView();
                }


                catch (SqlException ex)
                {
                    ltError.Text = "Error Occured while Updating GridView" + ex.Message;
                }
                finally
                {
                    conn.Close();
                    conn.Dispose();
                }
            }

        }



        protected void gvColors_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvColors.EditIndex = -1;
            BindDataToGridView();
        }

        protected void btnAddRow_Click(object sender, EventArgs e)
        {
            var connectionString = WebConfigurationManager.ConnectionStrings["DBConnection"];
            using (SqlConnection conn = new SqlConnection(connectionString.ConnectionString))
            {


                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("INSERT INTO COLORS (NAme,Hex) VALUES ('','')", conn);

                    cmd.ExecuteNonQuery();

                    BindDataToGridView();
                }


                catch (SqlException ex)
                {
                    ltError.Text = "Error Occured while Adding New Rowin GridView" + ex.Message;
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