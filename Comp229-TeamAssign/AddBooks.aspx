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
		<asp:DropDownList ID="genreList" runat="server">
			    <asp:ListItem Text="Please Select One" Value="" />
                <asp:ListItem Text="Romance" Value="one" />
                <asp:ListItem Text="Horror" Value="two" />
                <asp:ListItem Text="Comedy" Value="three" />
                <asp:ListItem Text="Thriller" Value="four" />
                <asp:ListItem Text="Other" Value="five" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ID="checkList" ControlToValidate="genreList" ErrorMessage="Please select one"></asp:RequiredFieldValidator>
                 &nbsp;</td>
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
     
   <%--<asp:Button ID="btnCancel" Text="Cancel" runat="server" OnClick="btnCancel_Click"/>
   <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click" />--%>
      </div>
    </body>
</asp:Content>
