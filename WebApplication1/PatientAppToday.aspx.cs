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
    public partial class CurrentAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            appointmentToday(sender, e);
        }




        protected void appointmentToday(object sender, EventArgs e)
        {
            myDAL objmyDAl = new myDAL();

            int pid = (int)Session["idoriginal"];

            string dName = "";
            string timings = "";

            int status = objmyDAl.appointmentTodayDisplayer(pid, ref dName, ref timings);

            if (status == -1)
            {
                Appointment.Text = "There was some error in retrieving the Patient's appointment.";
            }

            else if (status == 0)
            {
                Appointment.Text = "You have no appointment today with any doctor.";
            }

            else
            {
                
                    ADoctor.Text = "Your Appointment is today with  Dr" + dName;
                

                ATimings.Text = "The time is : " + timings;
            }

            return;
        }


    }
}