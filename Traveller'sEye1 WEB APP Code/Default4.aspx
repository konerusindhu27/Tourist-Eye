<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div>
<h3 style="font-size: 2.2em;">Invitation to the traveller&#39;s:</h3>
</div>
    <table>

<tr>
<td>



</td>

</tr>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

<asp:Button ID="btnsend" runat="server" Text="Send Email" style="width:305px" 
        onclick="btnsend_Click" />

</td>

</tr>

<tr>
<td>

    &nbsp;</td>

</tr>

<tr>
<td>



</td>

</tr>
<tr>
<td>

    &nbsp;</td>

</tr>
<tr>
<td>



</td>

</tr>
<tr>
<td>

<asp:Label ID="lblresult" runat="server" style="color:Blue" Font-Bold="true"></asp:Label>

</td>

</tr>
</table>

</asp:Content>

