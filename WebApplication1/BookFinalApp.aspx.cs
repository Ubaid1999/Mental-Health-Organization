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
    public partial class AppointmentRequestSent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendARequest(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();


            string dID1 = (string)Session["dID"];

            int dID = Convert.ToInt32(dID1);


            int pID = (int)Session["idoriginal"];


            string temp = (string)Session["available"];

            int available = Convert.ToInt32(temp);

            string mes = "";

            int status = objmyDAl.Booking(dID, pID, available, ref mes);


            if (status == -1)
            {
                Message.Text = "SORRY COULD NOT BOOK APPOINTMENT AT THE MOMENT";
            }

            else
            {
                Message.Text = " ------ YOUR APPOINTMENT HAS BEEN BOOKED! ------";
            }

            return;
        }




    }
}