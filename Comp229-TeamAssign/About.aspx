<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Comp229_TeamAssign.About" %>
<%--Sushmita Nandalan(300923159), Chanpreet Mudhar(300932732)--%>
<%--Date: 19th December, 2017 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <div class="jumbotron">
       <%-- Source for GIF: https://www.google.ca/search?biw=1366&bih=588&tbm=isch&sa=1&ei=VkNQWp3jEYfcjwTwgK3AAg&q=books+gif&oq=books+gif&gs_l=psy-ab.3..0l10.6768.13068.0.13336.11.11.0.0.0.0.98.763.10.11.0....0...1c.1.64.psy-ab..0.9.678.0..0i67k1.107.DV0Y7ZxiVtw#imgrc=lmV9BZOVNORNEM: --%>
        <img alt="Open Book. " src="Images/Banner.gif" style="width: 1050px; height: 275px; text-align: center;" /><br />
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

        `
    </div> 
</asp:Content>
