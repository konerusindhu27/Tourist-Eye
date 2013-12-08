<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="scripts/coin-slider.js"></script>

	<link rel="stylesheet" href="styles/coin-slider-styles.css" type="text/css" />
    <style>
.cs-buttons
{
display:none  !important;}

img
{
    width: 845px;
            height: 538px;
        }
</style>

	<title>Image slider</title>
</head>
<body> 

		<div id="places">
		
			<a href="#" target="_blank">
				<img src="http://i.telegraph.co.uk/multimedia/archive/00428/travel-graphics-200_428471a.jpg" alt="Mini Ninjas" />
				
			</a>
			
			<a href="#" target="_blank">
				<img src="http://images4.fanpop.com/image/photos/20000000/wonders-wonders-of-the-world-20066663-2560-1920.jpg" alt="Price of Persia" />
			</a>
			
			<a href="#" target="_blank">
				<img src="http://www.hdwallpapers3d.com/wp-content/uploads/2013/05/129216xcitefun-funxone-wonders-of-a-world-3.jpg" alt="Spiderman: Shattered Dimensions" />
			</a>
			
			<a href="#" target="_blank">
				<img src="http://www.hdwallpapersplus.com/wp-content/uploads/2012/10/victoria-falls-zimbabwe.jpg" alt="Brink" />
			</a>
		
			<a href="#" target="_blank" >
				<img src="http://www.lastrawberryfest.com/wp-content/uploads/2013/02/Travel-to-the-Heart-of-Los-Angeles-Best-places-to-visit.jpg" alt="God of War III" />
			</a>
			
			<a href="#" target="_blank">
				<img src="http://media-cdn.tripadvisor.com/media/photo-s/03/9b/2f/3a/bangalore.jpg" alt="Borderlands" />
				
			</a>
			
			<a href="http://www.swtor.com/" target="_blank">
				<img src="http://touristbeauty.files.wordpress.com/2013/06/93.jpg" alt="Star Wars: The Old Republic" />
			</a>
				
			<a href="#" target="_blank">&nbsp;</a><br />
				
			<a href="#" target="_blank">
				<img src="http://resources.touropia.com/gfx/d/tourist-attractions-in-the-usa/manhattan.jpg" alt="Batman: Arkham Asylum" /></a><br />
            <br />
            <br />
			
		</div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="LOGIN" ForeColor="#0099CC" 
            onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="Button2" runat="server" Text="SIGNUP" ForeColor="#0099FF" 
            onclick="Button2_Click" />
		<script>
		    $('#places').coinslider();
		</script>

</body>
</html>
