using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{

	[OperationContract]
	string GetData(int value);

	[OperationContract]
	CompositeType GetDataUsingDataContract(CompositeType composite);

    [OperationContract]

    int insertdetails(insertdetailsclass insert);
    [OperationContract]

    int checkuname(string uname);
    [OperationContract]
    int chklogin(string uname, string password);
    [OperationContract]
    DataSet gettotaldetails(int Id);

	// TODO: Add your service operations here
}

// Use a data contract as illustrated in the sample below to add composite types to service operations.
[DataContract]
public class CompositeType
{
	bool boolValue = true;
	string stringValue = "Hello ";

	[DataMember]
	public bool BoolValue
	{
		get { return boolValue; }
		set { boolValue = value; }
	}

	[DataMember]
	public string StringValue
	{
		get { return stringValue; }
		set { stringValue = value; }
	}
}

[DataContract]
public class insertdetailsclass
{

    string fname,lname,uname,password,uniqueid,phone,email;
    int age;

    [DataMember]

    //Properties start from here

    public string Pfname
    {
        get { return fname ; }
        set { fname = value; }
    }

    [DataMember]
    public string Plname
    {
        get { return lname; }
        set { lname = value; }
    }

     [DataMember]
    public string Puname
    {
        get { return uname; }
        set { uname = value; }
    }
     [DataMember]
    public string Ppassword
    {
        get { return password; }
        set { password = value; }
    }
     [DataMember]
    public int Page
    {
        get { return age; }
        set { age = value; }
    }

     [DataMember]
     public string PUniqid
     {
         get { return uniqueid; }
         set { uniqueid = value; }
     }
     [DataMember]
     public string Pphone
     {
         get { return phone; }
         set { phone = value; }
     }
     [DataMember]
     public string PEmail
     {
         get { return email; }
         set { email = value; }
     }

    //properties end here
}
