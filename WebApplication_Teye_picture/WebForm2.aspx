<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication_Teye_picture.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
   <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>

    <style type="text/css">

        .style1
        {
            width: 279px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1548px; width: 1539px">
    
        <asp:DataList ID="DataList1" runat="server" 
            OnItemCommand="DataList1_ItemCommand" DataSourceID="SqlDataSource1" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Horizontal">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                note:
                <asp:Label ID="noteLabel" runat="server" Text='<%# Eval("note") %>' />
                <br />
                location:
                <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" Height="182px" 
                    ImageUrl='<%# "~/storage/"+Eval("ImgName") %>' Width="175px" />
                <br />
                ImageName:
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ImgName") %>' 
                    ReadOnly="True"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" CommandName="call" Text="delete" />
                
                
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:dbString %>" 
                    
            SelectCommand="SELECT * FROM [ImageTable] WHERE ([userId] = @userId)">
        <SelectParameters>
            <asp:SessionParameter Name="userId" SessionField="First" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
