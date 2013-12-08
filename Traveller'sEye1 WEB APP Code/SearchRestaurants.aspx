<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SearchRestaurants.aspx.cs" Inherits="SearchRestaurants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    <title></title>
 
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

</head>
<body>
    
   <style>
li
{
    float: left;
margin: 0 13px 0;}

div.hideSkiplink
{
    width:95%;}
    .main
    {
        background: #BFF3FA;}
</style>
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                   Traveler's Eye
                </h1>
            </div>
         
            <div class="clear hideSkiplink">
                <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home"/>
                         <asp:MenuItem NavigateUrl="~/Contactus.aspx" Text="ContactUs"/>
                          <asp:MenuItem NavigateUrl="~/Default4.aspx" Text="Invitation"/>
                           <asp:MenuItem NavigateUrl="~/Invite.aspx" Text="Invite"/>
                            <asp:MenuItem NavigateUrl="~/SearchRestaurants.aspx" Text="SearchRestaurants"/>
                            <asp:MenuItem NavigateUrl="~/HotelSearch.aspx" Text="HotelSearch"/>

                    </Items>
                </asp:Menu>
            </div>
        </div>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div>
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="SearchRestaurants" />
    
    </div>
    </form>
</body>

</asp:Content>

