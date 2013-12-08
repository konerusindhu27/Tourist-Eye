using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using ServiceReference1;


public partial class Default4 : System.Web.UI.Page
{
    WebServiceSoapClient proxy = new WebServiceSoapClient();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
       Label1.Text =  proxy.sendemail();
    }
}