using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Teye_picture
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var fName = FileUpload1.FileName;
            var usrName = TextBox3.Text;
            var sessionVar = "" + usrName +"-"+ fName+"";
            var notes = TextBox1.Text;
            var location = TextBox2.Text;

//            FileUpload1.SaveAs(Server.MapPath("storage\\"+usrName+"-" + FileUpload1.FileName + ""));
            FileUpload1.SaveAs(Server.MapPath("storage\\"+ sessionVar + ""));
            
           


            UploadAttribute.WebService1 S1 = new UploadAttribute.WebService1();
            S1.Credentials = System.Net.CredentialCache.DefaultCredentials;

            String a;

            a = S1.insertTable(usrName, sessionVar, notes, location);

            if (a.Equals("Success insert"))
            {

                Response.Write("Upload Successful");

            }
            else
                Response.Write("Upload not Successful");

        }
    }
}