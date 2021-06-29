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
    public partial class Benefits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void sendARequest1(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();


            int dID = (int)Session["idoriginal"];
            int bid = 1;

            string mes = "";

            int status = objmyDAl.insertbenefit(dID, bid, ref mes);


            if (status == -1)
            {
                Message.Text = "Error in benefits1";
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



            int dID = (int)Session["idoriginal"];
            int bid = 2;

 

            string mes = "";

            int status = objmyDAl.insertbenefit2(dID, bid, ref mes);


            if (status == -1)
            {
                Message.Text = "Error in benefits2";
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


   

            int dID = (int)Session["idoriginal"];
            int bid = 3;


            string mes = "";

            int status = objmyDAl.insertbenefit3(dID, bid, ref mes);


            if (status == -1)
            {
                Message.Text = "Error in benefits3";
            }

            else
            {
                Message.Text = mes;
            }

            return;
        }
    }
}