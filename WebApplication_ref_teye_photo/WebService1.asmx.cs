using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication_ref_teye_photo
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {

            return "Hello World";
        }


        [WebMethod]
        public string insertTable(string userId, string ImgName, string note, string location)
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            //Open the connection
            conn.Open();

            //Declare the sql command
            SqlCommand cmd = new SqlCommand("Insert into ImageTable(userId,ImgName,note,location)values('" + userId + "','" + ImgName + "','" + note + "','" + location + "')", conn);

            //Execute the insert query
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            //close the connection
            conn.Close();

            return "Success insert";

        }



        [WebMethod]
        public string deleteTable(string name)
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            //Open the connection
            conn.Open();

            //Declare the sql command
            SqlCommand cmd = new SqlCommand("Delete From ImageTable Where ImgName= '" + name + "'", conn);

            //Execute the insert query
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            //close the connection
            conn.Close();

            return "Deleted";
        }


        [WebMethod]
        public String insertdetails(string fname, string lname, string uname, string password, string age, string uniqueid, string phone, string email)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            //Open the connection
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into Registration(fname,lname,uname,password,age,uniqid,PhoneNumber,email)values('" + fname + "','" + lname + "','" + uname + "','" + password + "'," + age + ",'" + uniqueid + "','" + phone + "','" + email + "')", conn);
            //Execute the insert query
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            //close the connection
            conn.Close();

            return "InsertSuccess";
        }


        [WebMethod]
        public int checkuname(string uname)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);


            SqlCommand cmd = new SqlCommand("select count(*) from Registration where uname='" + uname + "'", conn);
            cmd.CommandType = CommandType.Text;


            conn.Open();

            int result = Convert.ToInt32(cmd.ExecuteScalar());


            conn.Close();


            return result;
        }



        [WebMethod]
        public string chklogin(string uname, string password)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            
            SqlCommand cmd = new SqlCommand("select uname from Registration where uname='" + uname + "' and Password='" + password + "'", conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            da.Fill(ds);

            

            if (ds.Tables[0].Rows.Count > 0)
            {
               
             
                return uname;
            }

            else
            {
                return "blank";
            }


        }










    }
}
