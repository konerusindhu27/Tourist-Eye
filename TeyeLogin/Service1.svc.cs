using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace TeyeLogin
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        [WebInvoke(Method = "GET", ResponseFormat = WebMessageFormat.Json, UriTemplate = "CheckLogin/{Uname}/{Pwd}")]
        public Person CheckLogin(string Uname1, string Pwd)
        {
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            //Open the connection
            conn.Open();

            string Uname2 = "";


            //Declare the sql command
            SqlCommand cmd = new SqlCommand("select * from Registration where uname='" + Uname1 + "' and Password='" + Pwd + "'", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Uname2 = Uname2 + ";" + reader["uname"].ToString();

            }
            reader.Close();
            //close the connection
            conn.Close();


            //Open the connection
            // lookup person with the requested id 
            return new Person()
            {

                UserName = Uname2,


            };
        }


    }


    public class Person
    {

        //public string Age { get; set; }

        public string UserName { get; set; }

        //public string company { get; set; }

        //public string position { get; set; }

    }

}
