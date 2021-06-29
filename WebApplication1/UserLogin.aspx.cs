using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.DAL;

namespace WebApplication1
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["idoriginal"] = "";
        }

        protected void loginFunct(object sender, EventArgs e)
        {
            string un = uname.Text;
            string password = loginPassword.Text;

            myDAL objmyDAl = new myDAL();

            int status = 0;
            int type = 0;
            int id = 0;

            status = objmyDAl.CheckLogin(un, password, ref type, ref id);  //status tells us whether logged in or errors

            if (status == 0)  //logged in from procedure
            {
                Session["idoriginal"] = id;

                if (type == 1)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("Patient.aspx");
                    return;
                }

                else if (type == 2)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("Doctor.aspx");
                    return;
                }

                else if (type == 3)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("Admin.aspx");
                    return;
                }
            }


            else if (status == 1) //
            {
                Label1.Text =("Sorry This Username doesn't exist");
            }

            else if (status == 2)
            {
               Label2.Text = ("Password is Incorrect");
            }

            else if (status == -1)
            {
               Label2.Text = ("User Cannot Login");
            }
        }



    }
}