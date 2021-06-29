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
    public partial class YearlyPackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void sendARequest1(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();


            int pid = (int)Session["idoriginal"];
            int yid = 1;

            string mes = "";

            int status = objmyDAl.yearlypack1(pid, yid, ref mes);


            if (status == -1)
            {
                Message.Text = "Error in YearlyPackage1";
            }

            else
            {
                Message.Text = mes;
            }
            // Message.Text = " ------ DUMB ------";

            return;
        }

        protected void sendARequest2(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();


         

            int pid = (int)Session["idoriginal"];
            int yid = 2;


            string mes = "";

            int status = objmyDAl.yearlypack2(pid, yid, ref mes);


            if (status == -1)
            {
                Message.Text = "Error in YearlyPackage2";
            }

            else
            {
                Message.Text = mes;
            }
            // Message.Text = " ------ DUMB ------";

            return;
        }

        protected void sendARequest3(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();


            

            int pid = (int)Session["idoriginal"];
            int yid = 3;

          

            string mes = "";

            int status = objmyDAl.yearlypack3(pid, yid, ref mes);


            if (status == -1)
            {
                Message.Text = "Error in YearlyPackage3";
            }

            else
            {
                Message.Text = mes;
            }
            // Message.Text = " ------ DUMB ------";

            return;
        }
    }
}