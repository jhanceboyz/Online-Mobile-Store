<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="admin_confirmpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" 
        CancelDestinationPageUrl="~/admin/Default.aspx" 
        ContinueDestinationPageUrl="~/admin/Default.aspx" 
        onchangedpassword="ChangePassword1_ChangedPassword">
    </asp:ChangePassword>
</asp:Content>

