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
    public partial class ViewDoctorProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            docinfoo(sender, e);

           
        }
        protected void docinfoo(object sender, EventArgs e)
        {

            myDAL objmyDAl = new myDAL();

            int did = (int)Session["idoriginal"];

            string name = "";
            string phone = "";
            string address = "";
            string birthDate = "";
            string gender = "";
            string bfc = "";
            int pno = 0;
            int charg = 0;
            int sal = 0;
            string spec = "";
            string qual = "";



            int status = objmyDAl.getdocsProf(did, ref name, ref phone, ref address, ref birthDate, ref pno,ref charg,ref sal, ref gender, ref bfc,ref spec,ref qual);

            if (status == -1)
            {
                Response.Write("<script>alert('There was some error in retrieving the Docssss Info.');</script>");
            }

            else if (status == 0)
            {

                Label1.Text = name;
                Label2.Text = phone;
                Label4.Text = birthDate;
                Label7.Text = charg.ToString();
                Label8.Text = sal.ToString();
                Label9.Text = pno.ToString();
                Label3.Text = address;
                Label5.Text = gender;
                Label6.Text = spec;
                Label10.Text = qual;
                Labelbef.Text = bfc;
            }


            return;
        }
    }
}