using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Teye_picture
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var SessionVar = TextBox1.Text;
            Session.Add("First", SessionVar);

            HttpCookie myCookie = new HttpCookie("UserSettings");
            myCookie["A1"] = SessionVar;

            Server.Transfer("WebForm2.aspx");
            
        }
    }
}