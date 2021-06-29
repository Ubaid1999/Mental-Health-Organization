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
    public partial class ViewDoctors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["dID"] = "";
            allDocs(sender, e);
        }

        protected void TDoctorGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Int16 num = Convert.ToInt16(e.CommandArgument);

                string dID = TDoctorGrid.Rows[num].Cells[2].Text;

                Session["dID"] = dID;

                Response.BufferOutput = true;
                Response.Redirect("BookFromDocProf.aspx");

                return;
            }
        }




        protected void allDocs(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();

            DataTable DT = new DataTable();
            string specName = (string)Session["deptOriginal"];

            int status = objmyDAl.alldocslist(specName, ref DT);


            if (status == -1)
            {
                TDoctor.Text = "ERROR";
            }

            else
            {
                TDoctorGrid.DataSource = DT;
                TDoctorGrid.DataBind();
            }

            return;
        }


    }
}