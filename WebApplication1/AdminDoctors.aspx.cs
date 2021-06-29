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
    public partial class AdminDoctors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            deptInfo();

        }


        protected void deptInfo()
        {
            myDAL objmyDAl = new myDAL();

            DataTable DT = new DataTable();


            int status = objmyDAl.getsDoctorTable(ref DT);


            if (status == -1)
            {
                TDept.Text = "There was some error in retrieving the Departments Information.";
            }

            else
            {
                TDeptGrid.DataSource = DT;
                TDeptGrid.DataBind();
            }

            return;
        }
        protected void removedoc(Object sender, GridViewDeleteEventArgs e)
        {

            GridViewRow row = TDeptGrid.Rows[e.RowIndex];  //get row to be deleted

            int appointmentid = Convert.ToInt32(row.Cells[2].Text.ToString()); //rows app id

            myDAL objDAL = new myDAL();

            if (objDAL.RemoveDoc(appointmentid) == 1)
            {
                deptInfo();
            }
        }
    }
}