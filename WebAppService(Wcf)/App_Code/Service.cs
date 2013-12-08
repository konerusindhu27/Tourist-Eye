using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Database;Integrated Security=True;Pooling=False");

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


    public int insertdetails(insertdetailsclass insert)
    {


        SqlCommand cmd = new SqlCommand("insert into Registration(fname,lname,uname,password,age,uniqid,PhoneNumber,email) values ('" +insert.Pfname + "','" + insert.Plname + "','" + insert.Puname + "','" + insert.Ppassword + "'," + insert.Page + ",'" + insert.PUniqid + "','" + insert.Pphone + "','" + insert.PEmail + "')", con);
        cmd.CommandType = CommandType.Text;

        con.Open();

        int result = cmd.ExecuteNonQuery();


        con.Close();


        return result;
    }
    public int checkuname(string uname)
    {



        SqlCommand cmd = new SqlCommand("select count(*) from Registration where uname='" + uname + "'", con);
        cmd.CommandType = CommandType.Text;

       


        con.Open();

        int result = Convert.ToInt32(cmd.ExecuteScalar());


        con.Close();


        return result;
    }
    public int chklogin(string uname, string password)
    {

        int id = 0;
        SqlCommand cmd = new SqlCommand("select Id from Registration where uname='" + uname + "' and Password='" + password + "'", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            id = Convert.ToInt32(ds.Tables[0].Rows[0]["Id"]);
            return 1;
        }

        else
        {
            return 0;
        }


    }
    public DataSet gettotaldetails(int Id)
    {


        SqlCommand cmd = new SqlCommand("select * from Registration where Id=" + Id, con);

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
