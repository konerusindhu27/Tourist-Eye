

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div style="margin-top:20px">

<div style="float:right; margin-top: 20px; width: 113px;">
<asp:Label ID="lblusername" runat="server" Font-Bold="true"></asp:Label><br />
<asp:LinkButton ID="lnklogout" runat="server" Text="Logout" Font-Bold="True" 
        onclick="lnklogout_Click"></asp:LinkButton>
</div>

<table>



<tr>
<td>
Name : 
</td>
<td>
<asp:Label ID="lblname" runat="server"></asp:Label>
</td>
</tr>

<tr>
<td>
Age : 
</td>
<td>
<asp:Label ID="lblage" runat="server"></asp:Label>
</td>
</tr>

<tr>
<td>
Phone Number : 
</td>
<td>
<asp:Label ID="lblphone" runat="server"></asp:Label>
</td>
</tr>

</table>

    </div>
    
        <div class="clear">
        </div>
   
<table>

     <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <table class="style1">
             <tr>
                 <td>
                     Select the Services:</td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                         Text="Photo Upload" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                         Text="Photo Gallery" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                         Text="Search  Hotels" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                         Text="Navigation" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td class="style2">
                     <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                         Text="Get Weather" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                         Text="Search Restaurants" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                         Text="Send mail to Friends" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                         Text="Emergency Contacts" Width="160px" />
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                         Text="Wiki Voyage" Width="160px" />
                 </td>
             </tr>
             </div>
    
        <div class="clear">
        </div>
    </div>
             <tr>
                 <td>
                     <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                         Text="Search Hospitals" Width="160px" />
                 </td>
             </tr>
             </table>
     </p>
     

     <div class="footer">
        &copy;Copyrights Traveler'sEye-2013
    </div>
    
  
    <meta name="google-translate-customization" content="74e3442a3c991454-a2e0c66462df82e8-gaca9ef2d6ff6020d-2d"></meta>
    <div id="google_translate_element"></div><script type="text/javascript">
                                                 function googleTranslateElementInit() {
                                                     new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
                                                 }
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

</asp:Content>
