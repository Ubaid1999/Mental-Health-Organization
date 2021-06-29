using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;

using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idoriginal"] = "";
        }

       
        protected void signUpFunct(object sender, EventArgs e)
        {
            

            string Name = sName.Text;
            string BirthDate = sBirthDate.Text;
            string uname = Email.Text;
            string Password = sPassword.Text;
            string PhoneNo = Phone.Text;
            string Addr = Address.Text;

            string gender = Request.Form["Gender"].ToString();



            myDAL objmyDAl = new myDAL();

            int id = 0;

            int status = objmyDAl.SignUpPatient(Name, BirthDate, uname, Password, PhoneNo, gender, Addr, ref id);


            if (status == 0)   //username not available ..its in table
            {
                Label1.Text = "Email already in use";
              
            }

            else if (status == 1)
            {
                Session["idoriginal"] = id;

                Response.Write("<script>alert(' You have Succussfully Signed Up:DD !!!');</script>");

                Response.BufferOutput = true;
                Response.Redirect("Patient.aspx");
            }

            else if (status == -1)
            {
                Response.Write("<script>alert('SIGNUP ERROR !');</script>");
            }

        }

     
    }
}