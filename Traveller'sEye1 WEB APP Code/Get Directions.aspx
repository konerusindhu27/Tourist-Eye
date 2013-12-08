<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Get Directions.aspx.cs" Inherits="Get_Directions" %>

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
                </h1><form id="form2" runat="server">
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
   <script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js" style=""></script>
  
  
  
  <script type="text/javascript" src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.js"></script>
  <link rel="stylesheet" type="text/css" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.css">
  
  <script type="text/javascript" src="http://code.jquery.com/mobile/1.3.0-beta.1/jquery.mobile-1.3.0-beta.1.js"></script>
  <link rel="stylesheet" type="text/css" href="http://code.jquery.com/mobile/1.3.0-beta.1/jquery.mobile-1.3.0-beta.1.css">
  
  <link rel="stylesheet" type="text/css" href="/css/result-light.css">
  
  <style>
  html, body {
  height: 100%;
  margin: 0;
  padding: 0;
}

#map-canvas, #map_canvas {
  height: 100%;
}

@media print {
  html, body {
    height: auto;
  }

  #map-canvas, #map_canvas {
    height: 650px;
  }
}

#panel {
  position: absolute;
  top: 5px;
  left: 50%;
  margin-left: -180px;
  z-index: 5;
  background-color: #fff;
  padding: 5px;
  border: 1px solid #999;
}
#directions-panel {
        height: 100%;
        float: center;
        width: 100%;
        overflow: auto;
      }

      #map-canvas {
        margin-right: 0px;
      }

      #control {
        background: #fff;
        padding: 5px;
        font-size: 14px;
        font-family: Arial;
        border: 1px solid #ccc;
        box-shadow: 0 2px 2px rgba(33, 33, 33, 0.4);
        display: none;
      }

      @media print {
        #map-canvas {
          height: 500px;
          margin: 0;
        }

        #directions-panel {
          float: none;
          width: auto;
        }
      }
</style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>
    <script>
        $('#control').ready(function () {
            initialize(41.850033, -87.6500523);
            $('#submit').click(function () {

                calcRoute();



            });
        });
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();

        function initialize(lat, lan) {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var mapOptions = {
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: new google.maps.LatLng(lat, lan)
            };
            var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('directions-panel'));

            var control = document.getElementById('control');
            control.style.display = 'block';
            map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);
        }

        function calcRoute() {
            var start = document.getElementById('start').value;
            var end = document.getElementById('end').value;
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });
        }
    </script>
</head>

<body>
    
        <div id="control">
        <h5><center><i>Get Directions</i></center></h5>
        <hr/>
        <strong>Start:</strong>
          <input type="text" name="start" id="start" value=""/><br />
&nbsp;<strong>End:</strong>&nbsp;
     <input type="text" name="end" id="end" value=""/>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" id="submit" value="submit"/>   
       
    </div>
    <div id="directions-panel"></div>
    <div id="map-canvas" style="height:500px;width:100%;"></div>
    </form>
    
</body>
</html>
