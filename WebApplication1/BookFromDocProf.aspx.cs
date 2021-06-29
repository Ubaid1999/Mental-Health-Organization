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
    public partial class DoctorProfile : System.Web.UI.Page
    {
       
           protected void Page_Load(object sender, EventArgs e)
            {
            docprofdisplay(sender, e);
            }



            protected void docprofdisplay(object sender, EventArgs e)
            {
                myDAL objmyDAl = new myDAL();

                string dID1 = (string)Session["dID"];
            
                int dID = Convert.ToInt32(dID1);

                string name = "";
                string phone = "";
                string gender = "";

                float Charges = 0;
                int TotalPatients = 0;
                string qualification = "";
                string specialization = "";
                int age = 0;

                string deptName = (string)Session["deptOriginal"];

                int status = objmyDAl.getDocProfile(dID, ref name, ref phone, ref gender, ref Charges, ref TotalPatients, ref qualification, ref specialization, ref age);

                if (status == -1)
                {
                    Response.Write("<script>alert('ERROR');</script>");
                }

                else if (status == 0)
                {
                    DName.Text = name;
                    DPhone.Text = phone;
                    DQualification.Text = qualification;
                    DAge.Text = age.ToString();
                    DGender.Text = gender;
                    Spec.Text = specialization;
                    DCharges.Text = Charges.ToString();
                    DPT.Text = TotalPatients.ToString();
                }

                return;
            }



            protected void RedirectToAppointmentTaker(object sender, EventArgs e)
            {
            myDAL objmyDAl = new myDAL();
            int pid = (int)Session["idoriginal"];
            int num = 0;
            int status = objmyDAl.CheckIfPrev(pid, ref num);

            if (num == 0)
            {
                Labelnew.Text = "YOU ALREADY HAVE AN APPOINTMENT!";
            }
            else {
                Response.BufferOutput = true;
                Response.Redirect("BookTime.aspx");
            }
            }

            }
    }