<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Comp229_TeamAssign.Login" %>
<%-- Page doesnt work --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    	<asp:Label ID="LabelUser" runat="server" Text="User Id:" style="color: #FF0066"></asp:Label>
	&nbsp;&nbsp;
	<asp:TextBox ID="TextboxUser" runat="server"></asp:TextBox>
	<asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" ControlToValidate="TextboxUser"
		runat="server" ErrorMessage="Enter the Username"></asp:RequiredFieldValidator>


	<br />

	<asp:Label ID="LabelPassword" runat="server" Text="Password:" style="color: #FF0066"></asp:Label>
	<asp:TextBox ID="TextboxPassword" runat="server" TextMode="Password"></asp:TextBox>
	<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword"  ControlToValidate="TextboxPassword"
		runat="server" ErrorMessage="Enter the password"></asp:RequiredFieldValidator>

	<br />
	<asp:Button ID="ButtonLogIn" class="btn btn-primary btn-lg"runat="server" Text="Log in" OnClick="ButtonLogIn_Click" /></div>
</asp:Content>
