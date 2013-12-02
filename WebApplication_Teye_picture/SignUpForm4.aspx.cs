using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Teye_picture
{
    public partial class SignUpForm4 : System.Web.UI.Page
    {

        
            UploadAttribute.WebService1 proxy = new UploadAttribute.WebService1();
            
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {


            try

            {
                int check = proxy.checkuname(txtuname.Text);

                if (check == 1)
                {

                }
                {

                    String result = proxy.insertdetails(txtfname.Text, txtlname.Text, txtuname.Text, txtpassword.Text, txtage.Text, txtuniqueid.Text, txtphone.Text, txtemail.Text);

                    if (result.Equals("InsertSuccess"))
                    {

                        string msg = "<script>alert('Inserted Successfully')</script>";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", msg, false);
                        clear();
                        //Response.Redirect("LogIn.aspx");

                    }
                    else
                    {
                        string msg = "<script>alert('Error')</script>";
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", msg, false);

                    }
                }
            }
            catch
            { }



        }


        protected void txtuname_TextChanged(object sender, EventArgs e)
        {
            int check = proxy.checkuname(txtuname.Text);

            if (check == 1)
            {

                lblexist.Text = "UserName already exists try another one";
            }
            else
            {
                if (txtuname.Text == "")
                {
                    lblexist.Text = "";
                }
                else
                {
                    lblexist.Text = "OK";
                }
            }

        }
    

        protected void btnclear_Click(object sender, EventArgs e)
        {
            clear();
        }

        public void clear()
        {
            txtfname.Text = string.Empty;
            txtuname.Text = string.Empty;
            txtlname.Text = string.Empty;
            txtpassword.Text = string.Empty;
            txtage.Text = string.Empty;
            txtuniqueid.Text = string.Empty;
            txtphone.Text = string.Empty;
            txtemail.Text = string.Empty;
            lblexist.Text = string.Empty;


        }

     


    }
}