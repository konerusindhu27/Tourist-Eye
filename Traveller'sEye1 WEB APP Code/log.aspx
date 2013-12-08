<%@ Page Language="C#" AutoEventWireup="true" CodeFile="log.aspx.cs" Inherits="log" %>


<head id="Head1" runat="server">
    <title></title>
 
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
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
        <div class="main">
           <h1>Login page</h1>


<div style="margin-top:15px">
<table>

<tr>
<td>
UserName
</td>
<td>
<asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
</td>
</tr>

<tr>
<td>
Password
</td>
<td>
<asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
</td>
</tr>

<tr>
<td>
</td>
<td>
<asp:Button ID="btnsubmit" runat="server" text="Login" CssClass="button" 
        style=" height: 34px;
    width: 160px;" onclick="btnsubmit_Click" />
</td>
</tr>
</table>
</div>

        </div>
        <div class="clear">
        </div>
    </div>
    
    <div class="footer">
        &copy;Copyrights Traveler'sEye-2013
    </div>
    
  
    <meta name="google-translate-customization" content="74e3442a3c991454-a2e0c66462df82e8-gaca9ef2d6ff6020d-2d"></meta>
    <div id="google_translate_element"></div><script type="text/javascript">
                                                 function googleTranslateElementInit() {
                                                     new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
                                                 }
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        
    
</form>
</body>


