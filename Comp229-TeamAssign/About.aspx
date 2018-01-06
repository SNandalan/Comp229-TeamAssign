<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Comp229_TeamAssign.About" %>
<%--Sushmita Nandalan(300923159), Chanpreet Mudhar(300932732)--%>
<%--Date: 19th December, 2017 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css" >
    <div class="jumbotron">
       
        <img alt="Hand running through books." src="Images/Banner.gif" style="width: 1050px; height: 275px; text-align: center;" /><br />
        <h3>List Of Books</h3>
       <%--Displays a List of all the books--%>
        <asp:GridView ID="BooksGridView" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ISBN" AllowSorting="True" Height="340px" Width="908px">
        <Columns>
            <asp:HyperLinkField DataTextField="ISBN" HeaderText="ISBN" Visible="true" DataNavigateUrlFields="ISBN"
                DataNavigateUrlFormatString="Home.aspx?ISBN={0}" />
            <asp:BoundField DataField="BookTitle" HeaderText="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" />
            <asp:BoundField DataField="Format" HeaderText="Format" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" />
        </Columns>
    </asp:GridView>
    </div> 
</asp:Content>
