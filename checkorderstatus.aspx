<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkorderstatus.aspx.cs" Inherits="checkorderstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style1">
        CHECK BOOKING ORDER</h1>
    <h3 style="text-align: center">
        Booking order number<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
    </h3>
    <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="orderid" 
            DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="orderid" HeaderText="orderid" ReadOnly="True" 
                    SortExpression="orderid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="mobile" HeaderText="mobileno" 
                    SortExpression="mobileno" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="zipcode" HeaderText="pincode" 
                    SortExpression="pincode" />
                <asp:BoundField DataField="totalquantity" HeaderText="totalquantity" 
                    SortExpression="totalquantity" />
                <asp:BoundField DataField="totalamount" HeaderText="totalamount" 
                    SortExpression="totalamount" />
                <asp:BoundField DataField="cartid" HeaderText="cartid" 
                    SortExpression="cartid" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
            DeleteCommand="DELETE FROM [Ordertable] WHERE [orderid] = @orderid" 
            InsertCommand="INSERT INTO [Ordertable] ([orderid], [name], [mobile], [email], [city], [zipcode], [totalquantity], [totalamount], [cartid], [status], [address], [date]) VALUES (@orderid, @name, @mobileno, @email, @city, @pincode, @totalquantity, @totalamount, @cartid, @status, @address, @date)" 
            SelectCommand="SELECT * FROM [Ordertable] WHERE ([orderid] = @orderid)" 
            UpdateCommand="UPDATE [Ordertable] SET [name] = @name, [mobile] = @mobileno, [email] = @email, [city] = @city, [zipcode] = @pincode, [totalquantity] = @totalquantity, [totalamount] = @totalamount, [cartid] = @cartid, [status] = @status, [address] = @address, [date] = @date WHERE [orderid] = @orderid">
            <DeleteParameters>
                <asp:Parameter Name="orderid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="orderid" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobile" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="zipcode" Type="Decimal" />
                <asp:Parameter Name="totalquantity" Type="Int32" />
                <asp:Parameter Name="totalamount" Type="Int32" />
                <asp:Parameter Name="cartid" Type="Int32" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="date" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="orderid" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mobileno" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="pincode" Type="Decimal" />
                <asp:Parameter Name="totalquantity" Type="Int32" />
                <asp:Parameter Name="totalamount" Type="Int32" />
                <asp:Parameter Name="cartid" Type="Int32" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="orderid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

