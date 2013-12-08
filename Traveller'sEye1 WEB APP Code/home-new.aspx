<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home-new.aspx.cs" Inherits="home_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head id="Head1" runat="server">
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
    width: 408px;
           }
li
{
    float: left;
               margin-right: 13px;
               margin-top: 0;
               margin-bottom: 0;
           }

div.hideSkiplink
{
    width:95%;}
    .main
    {
        background: #BFF3FA;}
</style>
</head>
<body>
    <form id="form1" runat="server">         
   
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
        <div class="main">
           <div id="places" style="margin: 0 auto;">
		
			<a href="#" target="_blank">
				<img src="http://i.telegraph.co.uk/multimedia/archive/00428/travel-graphics-200_428471a.jpg" alt="Mini Ninjas" />
				
			</a>
			
			<a href="#" target="_blank">
				<img src="http://2.bp.blogspot.com/-8YS4vhwtDB8/TfhS5n3-1VI/AAAAAAAAALs/vo-13wgLqQI/s1600/737.jpg" alt="Price of Persia" />
			</a>
			
			<a href="#" target="_blank">
				<img src="http://www.hdwallpapers3d.com/wp-content/uploads/2013/05/129216xcitefun-funxone-wonders-of-a-world-3.jpg" alt="Spiderman: Shattered Dimensions" />
			</a>
			
			<a href="#" target="_blank">
				<img src="http://2.bp.blogspot.com/-8K9uO1KdFKw/UTsDODGQ57I/AAAAAAAAAkE/MPHweuyZqZQ/s1600/20.jpg" alt="Brink" />
			</a>
		
			<a href="#" target="_blank" >
				<img src="http://www.airpano.ru/files/eiffel_tower_big.jpg" alt="God of War III" />
			</a>
			
			<a href="#" target="_blank">
				<img src="http://media-cdn.tripadvisor.com/media/photo-s/03/9b/2f/3a/bangalore.jpg" alt="Borderlands" />
				
			</a>
			
			<a href="http://www.swtor.com/" target="_blank">
				<img src="http://1.bp.blogspot.com/-HSw6RZXdCCA/UD-2R41XnAI/AAAAAAAAARI/MCw5m5jK8Io/s1600/Akshardham_Delhi_.jpg" alt="Star Wars: The Old Republic" />
			</a>
				
			   <a href="#" target="_blank">&nbsp;</a><br />
				
			<a href="#" target="_blank">
				<img src="http://resources.touropia.com/gfx/d/tourist-attractions-in-the-usa/manhattan.jpg" alt="Batman: Arkham Asylum" /></a><br />
               <br />
               <br />
               <br />
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
			
		</div>
        <div style="width: 300px; margin:0 auto;">
            <br />
    </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" ForeColor="#0066FF" 
                   onclick="Button1_Click" Text="LOGIN" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" ForeColor="#0066FF" 
                   onclick="Button2_Click" Text="SIGNUP" />
		<script>
		    $('#places').coinslider();
		</script>
            <br />
            <br />
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
</html>

