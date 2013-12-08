using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WebServiceSoapClient proxy = new WebServiceSoapClient();

        if (!IsPostBack)
        {

            if (Session["Id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                int Id = Convert.ToInt32(Session["Id"].ToString());


                DataSet ds = proxy.gettotaldetails(Id);


                if (ds.Tables[0].Rows.Count > 0)
                {

                    lblusername.Text = "Welcome : " + ds.Tables[0].Rows[0]["uname"].ToString();
                    lblname.Text = ds.Tables[0].Rows[0]["fname"] + " " + ds.Tables[0].Rows[0]["lname"].ToString();
                    lblage.Text = ds.Tables[0].Rows[0]["age"].ToString();
                    lblphone.Text = ds.Tables[0].Rows[0]["PhoneNumber"].ToString();
                }

            }

        }


    }



    protected void lnklogout_Click(object sender, EventArgs e)
    {

        Session.Remove("Id");
        Server.Transfer("Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://www.kayak.com/hotels");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://maps.google.com/?q=food");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Invite.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://vhost0819.site1.compute.ihost.com/aspnet_client/emergencylocalcommu/WebForm1.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://en.wikivoyage.org/wiki/Main_Page");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Get Directions.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://vhost0819.site1.compute.ihost.com/aspnet_client/Weatherwebsite/Default.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://vhost1901.site1.compute.ihost.com/aspnet_client/WebApplication_Teye_picture/WebForm1.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://vhost1901.site1.compute.ihost.com/aspnet_client/WebApplication_Teye_picture/WebForm3.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://maps.google.com/?q=hospital");

    }
}