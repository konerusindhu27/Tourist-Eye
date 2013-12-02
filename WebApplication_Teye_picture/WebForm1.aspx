<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication_Teye_picture.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>


    <style type="text/css">

        .style1
        {
            width: 279px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        Click on the Browse button to take picture
    
        <br />
&nbsp;<br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="324px" />
        <br />
        Biref Note:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Location:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Please enter the provided security code in the following field before uploading 
        :<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" 
            Height="29px" />

         <script type="text/javascript">
             (function () {

                 var takePicture = document.querySelector("#FileUpload1");

                 showPicture = document.querySelector("#Image1");



                 if (takePicture && showPicture) {

                     // Set events

                     takePicture.onchange = function (event) {

                         var files = event.target.files,

                file;

                         if (files && files.length > 0) {

                             file = files[0];

                             try {

                                 // Get window.URL object

                                 var URL = window.URL || window.webkitURL;



                                 // Create and revoke ObjectURL

                                 var imgURL = URL.createObjectURL(file);



                                 // Set img src to ObjectURL

                                 showPicture.src = imgURL;



                                 // Revoke ObjectURL

                                 URL.revokeObjectURL(imgURL);



                             }

                             catch (e) {

                                 try {

                                     var fileReader = new FileReader();

                                     fileReader.onload = function (event) {

                                         showPicture.src = event.target.result;

                                     };

                                     fileReader.readAsDataURL(file);

                                 }

                                 catch (e) {

                                     var error = document.querySelector("#error");

                                     if (error) {

                                         error.innerHTML = "FileReader not supported";

                                     }

                                 }

                             }

                         }

                     };

                 }

             })();
    
    </script>


    
    </div>
    </form>
</body>
</html>
