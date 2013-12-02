<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="em_webapp._Default" %>
<html>
<head>
<title></title>
</head>
<body><form id="form1" runat="server">
<asp:Label ID="From" runat="server" Text="From"></asp:Label>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<asp:TextBox ID="From_box" runat="server"></asp:TextBox>
<p>
    <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
    <asp:TextBox ID="Password_box" runat="server" Height="16px" 
        TextMode="Password"></asp:TextBox>
</p>
<asp:Label ID="To" runat="server" Text="To"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
<asp:TextBox ID="To_box" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Subject" runat="server" Text="Subject"></asp:Label>&nbsp&nbsp&nbsp;&nbsp;&nbsp; &nbsp&nbsp&nbsp
    <asp:TextBox ID="Subject_box" runat="server" Width="224px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Body" runat="server" Text="Body"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Body_box" runat="server" Height="93px" TextMode="MultiLine" 
        Width="248px"></asp:TextBox>
    <p>
        <asp:Button ID="Send" runat="server" onclick="Button1_Click" Text="Send" />
    </p>
</form>
</body>
</html>


