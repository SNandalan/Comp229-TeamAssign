<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamAssign._Default" %>
<%--Sushmita Nandalan(300923159), Chanpreet Mudhar(300932732)--%>
<%--Date: 19th December, 2017 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <div class="jumbotron">
          <%-- Image source: https://architecture.desktopnexus.com/wallpaper/1154038/ --%>
            <img alt="Library " src="Images/library1.jpg" style="width: 1050px; height: 275px; text-align: center;" /><br />
        <h2>Books Library</h2>
        <p class="size">
         This is a library of books ranging from a wide variety of authors, genres and time periods. 
        </p>
        <blockquote class="size">
            <p class="size">
        <em>“Sometimes, you read a book and it fills you with this weird evangelical zeal, and you become convinced that the shattered world will never be put back together unless and until all living humans read the book.” </em>
            -John Green, The Fault in Our Stars
            </p>
        </blockquote>
            Here is a list of best selling books. 
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
            Please click on the button below to make your own list of books. 
        <%--This Shows a bootstrap button that takes user to the List page --%>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">List of Books &raquo;</a></p>
    </div>   
    
    </asp:Content>
