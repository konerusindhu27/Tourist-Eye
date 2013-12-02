using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace em_webapp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            em_ref.WebService w1 = new em_ref.WebService();
            w1.Credentials = System.Net.CredentialCache.DefaultCredentials;
            string msg = "";
            msg = w1.InitializeComponent(From_box.Text, Password_box.Text, To_box.Text,Subject_box.Text,Body_box.Text);
            Console.WriteLine(msg);
        }
    }
}
