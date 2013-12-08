using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

public class WebService : System.Web.Services.WebService {

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Database;Integrated Security=True;Pooling=False");
    
    public WebService () {

    
    
    }
    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]

    public int insertdetails(string fname,string lname,string uname,string password,int age,string uniqueid,string phone,string email)
    {



        SqlCommand cmd = new SqlCommand("insert into Registration(fname,lname,uname,password,age,uniqid,PhoneNumber,email) values ('" + fname + "','" + lname + "','" + uname + "','" + password + "'," + age + ",'" + uniqueid + "','" + phone + "','" + email + "')", con);
        cmd.CommandType = CommandType.Text;


        con.Open();

        int result = cmd.ExecuteNonQuery();


        con.Close();


        return result;
    }

      [WebMethod]
    public int checkuname(string uname)
    {



        SqlCommand cmd = new SqlCommand("select count(*) from Registration where uname='"+uname+"'", con);
        cmd.CommandType = CommandType.Text;


        con.Open();

        int result =Convert.ToInt32(cmd.ExecuteScalar());


        con.Close();


        return result;
    }

      [WebMethod]
      public int chklogin(string uname,string password)
      {

          int id=0;
          SqlCommand cmd = new SqlCommand("select Id from Registration where uname='" + uname + "' and Password='" + password + "'", con);

          SqlDataAdapter da = new SqlDataAdapter(cmd);

          DataSet ds = new DataSet();

          da.Fill(ds);

          if (ds.Tables[0].Rows.Count>0)
          {
              id =Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);
              return id;
          }

          else
          {
              return id;
          }
      

         
      }

      [WebMethod]
      public string sendemail()
      {
          con.Open();
         SqlCommand cmd = new SqlCommand("select * from Registration ", con);

          SqlDataReader da = cmd.ExecuteReader();

          string to_email = "";

          while(da.Read())
          {
              if(da["email"].ToString() != null && da["email"].ToString() != "")
              {
              to_email += da["email"].ToString()+ ",";
              }
             
          }
          to_email = to_email.Substring(0, to_email.Length - 1);
          try
        {

            
            string senderID = "travellerseye551@gmail.com";
            const string senderPassword = "traveller551";
            

            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            string body = "sadfasdfsa";

            MailMessage message = new MailMessage(senderID, to_email, "Test email", body);
            message.IsBodyHtml = true;
            message.Body = body;
            smtp.Send(message);
            return "Email Sent Successfully";

        }
          catch (Exception ex)
          {
              return to_email+ex.ToString();
          }


          con.Close();
          cmd.Dispose();
      }




      [WebMethod]
      public DataSet gettotaldetails(int Id)
      {

     
          SqlCommand cmd = new SqlCommand("select * from Registration where Id=" + Id , con);

          SqlDataAdapter da = new SqlDataAdapter(cmd);

          DataSet ds = new DataSet();

          da.Fill(ds);

          if (ds.Tables[0].Rows.Count > 0)
          {
              return ds;
          }

          else
          {
              return null;
          }



      }

    
}
