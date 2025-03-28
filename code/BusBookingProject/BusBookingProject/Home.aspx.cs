using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class Home : System.Web.UI.Page
    {
        #region Global Variable
        private readonly string connString = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString();
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindOriginCity();
                bindDestinationCity();
            }
        }

        private void bindOriginCity()
        {
            DataSet dsOrigin = getCity();
            if (dsOrigin != null && dsOrigin.Tables.Count > 0 && dsOrigin.Tables[0].Rows.Count > 0)
            {
                ddlOrigin.DataSource = dsOrigin.Tables[0];
                ddlOrigin.DataTextField = "CityName";
                ddlOrigin.DataValueField = "CityName";
                ddlOrigin.DataBind();
            }
            ddlOrigin.Items.Insert(0, new ListItem("-Select City--", "0"));
        }

        private void bindDestinationCity()
        {
            DataSet dsDestination = getCity();
            if (dsDestination != null && dsDestination.Tables.Count > 0 && dsDestination.Tables[0].Rows.Count > 0)
            {
                ddlDestination.DataSource = dsDestination.Tables[0];
                ddlDestination.DataTextField = "CityName";
                ddlDestination.DataValueField = "CityName";
                ddlDestination.DataBind();
            }
            ddlDestination.Items.Insert(0, new ListItem("-Select City--", "0"));
        }

        private DataSet getCity()
        {
            DataSet dsGetData = new DataSet();

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    using (SqlCommand sqlCmd = new SqlCommand("ispGetCity", conn))
                    {
                        sqlCmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataAdapter sda = new SqlDataAdapter(sqlCmd))
                        {
                            conn.Open();
                            sda.Fill(dsGetData);
                        }
                    }
                }
            }
            catch (SqlException sqlEx)
            {
                // Log SQL error
                Console.WriteLine("SQL Exception: " + sqlEx.Message);
            }
            catch (Exception ex)
            {
                // Log General error
                Console.WriteLine("General Exception: " + ex.Message);
            }

            return dsGetData;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("BusBookingSearchDetails.aspx?Origin=" + ddlOrigin.SelectedItem.Text +
                              "&Destination=" + ddlDestination.SelectedItem.Text +
                              "&TravelDate=" + txtDate.Text);
        }
    }
}
