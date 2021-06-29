using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using System.Data;

namespace WebApplication1
{
    public partial class PendingAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }


        public void loadgrid()
        {
            myDAL objDAL = new myDAL();

            int did = (int)Session["idoriginal"];

            DataTable DT = new DataTable();

            objDAL.BookedAppToday(did, ref DT);

            DocAppToday.DataSource = DT;
            DocAppToday.DataBind();

        }

        protected void removeApp(Object sender, GridViewDeleteEventArgs e)
        {
           
            GridViewRow row = DocAppToday.Rows[e.RowIndex];  //get row to be deleted

            int appointmentid = Convert.ToInt32(row.Cells[1].Text.ToString()); //rows app id

            myDAL objDAL = new myDAL();

            if (objDAL.RemoveBookedApp(appointmentid) == 1)
            {
                loadgrid(); 
            }
        }

    }
}