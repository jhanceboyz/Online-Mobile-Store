<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="addmobile.aspx.cs" Inherits="admin_addmobile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 615px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
    LIST NEW MOBILE</h1>
<table class="style1">
    <tr>
        <td class="style2">
            <h3>
                Category Name</h3>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="categoryname" 
                DataValueField="categoryid">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <h3>
                Brand name</h3>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="brandname" 
                DataValueField="brandid">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <h3>
                Mobile name</h3>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <h3>
                Description</h3>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="37px" 
                Width="223px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <h3>
                Image</h3>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            <h3>
                Price</h3>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
                onselecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [category]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        onselecting="SqlDataSource2_Selecting" 
        SelectCommand="SELECT [brandid], [brandname] FROM [brand name]">
    </asp:SqlDataSource>
</asp:Content>

