using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;
using System.Data;
using System.IO;
using System.Data.SqlClient;

namespace WebApplication1
{

   
    public partial class ViewPatientProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            patientInfo(sender, e);
        }

        
        protected void patientInfo(object sender, EventArgs e)
        {
           
            myDAL objmyDAl = new myDAL();

            int pid = (int)Session["idoriginal"];

            string name = "";
            string phone = "";
            string address = "";
            string birthDate = "";
            int age = 0;
            string gender = "";
            string ypk = "";

            int status = objmyDAl.getPatientProf(pid, ref name, ref phone, ref address, ref birthDate, ref age, ref gender, ref ypk);

            if (status == -1)
            {
                Response.Write("<script>alert('There was some error in retrieving the Patient's Info.');</script>");
            }

            else if (status == 0)
            {
                
                PName2.Text = name;
                PPhone.Text = phone;
                PBirthDate.Text = birthDate;
                PatientAge.Text = age.ToString();
                PAddress.Text = address;
                PGender.Text = gender;
                PYP.Text = ypk;
            }
     

            return;
        }
       
    }

}