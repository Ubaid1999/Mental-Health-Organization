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
    public partial class PatientBook1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["deptOriginal"] = "";
            deptInfo(sender, e);

        }

        protected void TDeptGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int16 num = Convert.ToInt16(e.CommandArgument);

                string specName = TDeptGrid.Rows[num].Cells[2].Text;  //get specialization in row selected

                Session["deptOriginal"] = specName;

                Response.BufferOutput = true;
                Response.Redirect("getDocOfSpec.aspx");

                return;
            }
        }



        protected void deptInfo(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();

            DataTable DT = new DataTable();


            int status = objmyDAl.getspectable(ref DT);


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

    }
}