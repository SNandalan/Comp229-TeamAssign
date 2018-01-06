<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamAssign._Default" %>
<%--Sushmita Nandalan(300923159), Chanpreet Mudhar(300932732)--%>
<%--Date: 19th December, 2017 --%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/StyleSheet.css" rel="stylesheet" type="text/css">
    <div class="jumbotron">
         
            <img alt="Library " src="Images/library1.jpg" style="width: 1050px; height: 275px; text-align: center;" /><br />
        <h2>Books Library</h2>
        <p class="size">
            This is a library of books ranging from a wide variety of authors, genres and time periods.  
        </p>
        <blockquote class="size">
            <em>“Sometimes, you read a book and it fills you with this weird evangelical zeal, and you become convinced that the shattered world will never be put back together unless and until all living humans read the book.” </em>
            -John Green, The Fault in Our Stars
        </blockquote>
        <%--This Shows a bootstrap button that takes user to the List page --%>
        <p><a href="About.aspx" class="btn btn-primary btn-lg">List of Books &raquo;</a></p>
    
    </div>
    
    </asp:Content>
