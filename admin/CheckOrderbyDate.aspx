﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/aMasterPage.master" AutoEventWireup="false" CodeFile="CheckOrderbyDate.aspx.vb" Inherits="Admin_CheckOrder" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<table class="style1">
    <tr>
        <td>
            Date</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="TextBox1">
            </cc1:CalendarExtender>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Check Order" />
        </td>
    </tr>
</table>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="OrderId" 
    DataSourceID="SqlDataSource1" Width="100%">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" 
            SortExpression="OrderId" />
        <asp:BoundField DataField="CartId" HeaderText="CartId" 
            SortExpression="CartId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
            SortExpression="Mobile" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" 
            SortExpression="Zipcode" />
        <asp:BoundField DataField="TotalQuantity" HeaderText="TotalQuantity" 
            SortExpression="TotalQuantity" />
        <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" 
            SortExpression="TotalAmount" />
        <asp:BoundField DataField="Date" HeaderText="Date" 
            SortExpression="Date" />
        <asp:BoundField DataField="Status" HeaderText="Status" 
            SortExpression="Status" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl='<%# Eval("CartId", "CheckOrderDetail.aspx?i={0}") %>'>Check Complete Order Detail</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
    DeleteCommand="DELETE FROM [OrderTable] WHERE [Orderid] = @Orderid" 
    InsertCommand="INSERT INTO [OrderTable] ([Orderid], [Cartid], [Name], [Mobile], [Email], [Address], [City], [State], [ZipCode], [totalquantity], [totalamount], [date], [status]) VALUES (@Orderid, @Cartid, @Name, @Mobile, @Email, @Address, @City, @State, @ZipCode, @totalquantity, @totalamount, @date, @status)" 
    SelectCommand="SELECT * FROM [OrderTable] WHERE ([date] = @date) ORDER BY [Orderid] DESC" 
    
        
    UpdateCommand="UPDATE [OrderTable] SET [Cartid] = @Cartid, [Name] = @Name, [Mobile] = @Mobile, [Email] = @Email, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [totalquantity] = @totalquantity, [totalamount] = @totalamount, [date] = @date, [status] = @status WHERE [Orderid] = @Orderid">
    <DeleteParameters>
        <asp:Parameter Name="Orderid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Orderid" Type="Int32" />
        <asp:Parameter Name="Cartid" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Mobile" Type="Decimal" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="ZipCode" Type="Int32" />
        <asp:Parameter Name="totalquantity" Type="Int32" />
        <asp:Parameter Name="totalamount" Type="Int32" />
        <asp:Parameter Name="date" Type="String" />
        <asp:Parameter Name="status" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="date" PropertyName="Text" 
            Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Cartid" Type="Int32" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Mobile" Type="Decimal" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="ZipCode" Type="Int32" />
        <asp:Parameter Name="totalquantity" Type="Int32" />
        <asp:Parameter Name="totalamount" Type="Int32" />
        <asp:Parameter Name="date" Type="String" />
        <asp:Parameter Name="status" Type="String" />
        <asp:Parameter Name="Orderid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
