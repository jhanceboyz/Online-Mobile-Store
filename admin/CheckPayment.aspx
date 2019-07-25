<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/aMasterPage.master" AutoEventWireup="false" CodeFile="CheckPayment.aspx.vb" Inherits="Admin_CheckPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Paymentid" 
        DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="Paymentid" HeaderText="Paymentid" 
                InsertVisible="False" ReadOnly="True" SortExpression="Paymentid" />
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" 
                SortExpression="OrderId" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" 
                SortExpression="CardType" />
            <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" 
                SortExpression="CardNumber" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ExpDate" HeaderText="ExpDate" 
                SortExpression="ExpDate" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [PaymentTable] ORDER BY [Paymentid] DESC">
    </asp:SqlDataSource>
</asp:Content>

