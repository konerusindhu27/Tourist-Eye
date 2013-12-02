using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication_Teye_picture
{
   

    public partial class WebForm2 : System.Web.UI.Page
    {
        string text ="nop";
        string Uid22;
        protected void Page_Load(object sender, EventArgs e)
        {
             Uid22 = (string)(Session["First"]);
             //HttpCookie myCookie = new HttpCookie("UserSettings");
             //myCookie["A1"] = Uid22 ;
             Response.Write(Uid22+"text1");

             //myCookie["Color"] = "Blue";

        }


        public void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        { 
            if (e.CommandName.Equals("call"))
            {

                DataListItem item = (DataListItem)(((Button)(e.CommandSource)).NamingContainer);
                text = ((TextBox)item.FindControl("TextBox1")).Text;
                Response.Write(text+"text1");
            }


            UploadAttribute.WebService1 S1 = new UploadAttribute.WebService1();
            S1.Credentials = System.Net.CredentialCache.DefaultCredentials;

            String a;

            a = S1.deleteTable(text);

            string imgurl = Server.MapPath("~/storage/"+text + "");
            System.IO.File.Delete(imgurl);
            
            if (a.Equals("Bought"))
            {

                Response.Write("Delete Successful");
                Response.Write(text);
            }
            else
                Response.Write("Delete UnSuccessful");
            



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }


       

      

        
      
       

       
    }
}