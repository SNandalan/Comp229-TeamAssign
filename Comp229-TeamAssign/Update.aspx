<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229-TeamAssign.Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4> Update Information</h4>
  <div>
         <table>
              <tr>
                 <td>First Name:</td>
                 <td>
                 <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
                 </td>
             </tr>
     
             <tr>
                 <td>Last Name:</td>
                 <td>
                 <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>Password:</td>
                 <td>
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Date" ></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>Books Read:</td>
                 <td>
                 <asp:TextBox ID="txtBooks" runat="server" TextMode="Date" ></asp:TextBox>
                 </td>
             </tr>
             </table>
     
   <asp:Button ID="btnCancel" Text="Cancel" runat="server" OnClick="btnCancel_Click"/>
   <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click" />
      
         <br />

     </div>
</asp:Content>
