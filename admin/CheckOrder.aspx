<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/aMasterPage.master" AutoEventWireup="false" CodeFile="CheckOrder.aspx.vb" Inherits="Admin_CheckOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="Orderid" 
    DataSourceID="SqlDataSource1" Width="100%">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="Orderid" HeaderText="Orderid" ReadOnly="True" 
            SortExpression="Orderid" />
        <asp:BoundField DataField="Cartid" HeaderText="Cartid" 
            SortExpression="Cartid" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
            SortExpression="Mobile" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
            SortExpression="ZipCode" />
        <asp:BoundField DataField="totalquantity" HeaderText="totalquantity" 
            SortExpression="totalquantity" />
        <asp:BoundField DataField="totalamount" HeaderText="totalamount" 
            SortExpression="totalamount" />
        <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" 
            SortExpression="PaymentType" />
        <asp:BoundField DataField="date" HeaderText="date" 
            SortExpression="date" />
        <asp:BoundField DataField="status" HeaderText="status" 
            SortExpression="status" />
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
    InsertCommand="INSERT INTO [OrderTable] ([Orderid], [Cartid], [Name], [Mobile], [Email], [Address], [City], [State], [ZipCode], [totalquantity], [totalamount], [PaymentType], [date], [status]) VALUES (@Orderid, @Cartid, @Name, @Mobile, @Email, @Address, @City, @State, @ZipCode, @totalquantity, @totalamount, @PaymentType, @date, @status)" 
    SelectCommand="SELECT * FROM [OrderTable] ORDER BY [Orderid] DESC" 
    
        
        UpdateCommand="UPDATE [OrderTable] SET [Cartid] = @Cartid, [Name] = @Name, [Mobile] = @Mobile, [Email] = @Email, [Address] = @Address, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [totalquantity] = @totalquantity, [totalamount] = @totalamount, [PaymentType] = @PaymentType, [date] = @date, [status] = @status WHERE [Orderid] = @Orderid">
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
        <asp:Parameter Name="PaymentType" Type="String" />
        <asp:Parameter Name="date" Type="String" />
        <asp:Parameter Name="status" Type="String" />
    </InsertParameters>
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
        <asp:Parameter Name="PaymentType" Type="String" />
        <asp:Parameter Name="date" Type="String" />
        <asp:Parameter Name="status" Type="String" />
        <asp:Parameter Name="Orderid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

