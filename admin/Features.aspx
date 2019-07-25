<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="Features.aspx.cs" Inherits="admin_Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        text-align: center;
    }
    .style2
    {
        width: 100%;
        height: 204px;
    }
    .style3
    {
        width: 633px;
        text-align: center;
    }
    .style4
    {
        text-align: left;
    }
    .style5
    {
        width: 633px;
        text-align: center;
        height: 23px;
    }
    .style6
    {
        text-align: left;
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style1">
    ADD FEATURES</h1>
<table class="style2">
    <tr>
        <td class="style3">
            Category</td>
        <td class="style4" style="margin-left: 80px">
            <asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="categoryname" 
                DataValueField="categoryid" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
                SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Brand</td>
        <td class="style4" style="margin-left: 80px">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="brandname" 
                DataValueField="brandid" Height="16px" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
                SelectCommand="SELECT [brandname], [brandid] FROM [brand name]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Mobile</td>
        <td class="style4" style="margin-left: 80px">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="mobilename" 
                DataValueField="mobileid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
                
                SelectCommand="SELECT [mobilename], [mobileid] FROM [mobile name] WHERE (([categoryid] = @categoryid) AND ([brandid] = @brandid))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="categoryid" 
                        PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="brandid" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Name</td>
        <td class="style4" style="margin-left: 80px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Body</td>
        <td class="style4">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Display</td>
        <td class="style4">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            OS</td>
        <td class="style4">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Battery</td>
        <td class="style4">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Camera</td>
        <td class="style4">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Weight</td>
        <td class="style6">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Network</td>
        <td class="style6">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Sim</td>
        <td class="style6">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
</asp:Content>

