<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBooks.aspx.cs" Inherits="Comp229_TeamAssign.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div class="jumbotron">
        <h2> Add your favourite books.</h2>        
         <table>
              <tr>
                 <td>Book Title:</td>
                 <td>
                 <asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator runat="server" ID="BookTitle" ControlToValidate="txtBookTitle" ErrorMessage="Book title is required" Display="Dynamic"></asp:RequiredFieldValidator>
                 </td>
             </tr>
     
             <tr>
                 <td>Author's Name:</td>
                 <td>
                 <asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
                 &nbsp;
                 <asp:RequiredFieldValidator runat="server" ID="AuthorName" ControlToValidate="txtAuthorName" ErrorMessage="Author name is required" Display="Dynamic"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>ISBN:</td>
                 <td>
                 <asp:TextBox ID="txtISBN" runat="server" ></asp:TextBox>
                     &nbsp;<asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"  ControlToValidate="txtISBN" ErrorMessage="Value must be a number" />
                 </td>
             </tr>
             <tr>
                 <td>Genre:</td>
                 <td>
                 <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
                 &nbsp;
                 <asp:RequiredFieldValidator runat="server" ID="Genre" ControlToValidate="txtGenre" ErrorMessage="Genre is required" Display="Dynamic"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>Rating:</td>
                 <td>
                 <asp:TextBox ID="txtRating" runat="server"></asp:TextBox>
                 <asp:RangeValidator runat="server" Type="Double" MinimumValue="1" MaximumValue="5" ControlToValidate="txtRating" 
                  ErrorMessage ="Value must be a number between 1 and 5" />
                 </td>
             </tr>
             </table>
     
   <asp:Button ID="btnUpdate" class="btn btn-primary btn-lg" Text="Update" runat="server" OnClick="btnUpdate_Click" />
            <br />
            <asp:Label ID="lblStatus" runat="server" ForeColor="Green" Text="Label" Visible="False"></asp:Label>

      </div>
    </body>
</asp:Content>
