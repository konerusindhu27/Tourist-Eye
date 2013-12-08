
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HotelSearch.aspx.cs" Inherits="HotelSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<title></title>
   
   
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="scripts/coin-slider.js"></script>

	<link rel="stylesheet" href="styles/coin-slider-styles.css" type="text/css" />

    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
       <style>
           .cs-buttons
{
display:none  !important;}

img
{
    width: 800px;}
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
</head>
<body>
            
   
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
                        <asp:MenuItem NavigateUrl="~/home-new.aspx" Text="Home"/>
                         <asp:MenuItem NavigateUrl="~/Contactus.aspx" Text="ContactUs"/>
                          <asp:MenuItem NavigateUrl="~/Default4.aspx" Text="Invitation"/>
                           <asp:MenuItem NavigateUrl="~/Invite.aspx" Text="Invite"/>
                            <asp:MenuItem NavigateUrl="~/SearchRestaurants.aspx" Text="Restaurants"/>
                            <asp:MenuItem NavigateUrl="~/HotelSearch.aspx" Text="Hotels"/>

                    </Items>
                </asp:Menu>

            </div>
            
        </div>

    <div>

    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    
    
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="HotelSearch" />
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
  
</body>
</asp:Content>
