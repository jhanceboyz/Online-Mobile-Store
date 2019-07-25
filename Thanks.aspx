<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Thanks.aspx.vb" Inherits="Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Width="100%">
        <Columns>
            <asp:BoundField DataField="mobileName" HeaderText="Mobile Name" SortExpression="ProductName" />
            <asp:BoundField DataField="price" HeaderText="Our Price" SortExpression="ourprice" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
            <asp:TemplateField><ItemTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="156px" ImageUrl='<%# Eval("image") %>' Width="186px" />
                        </td>                        
                    </tr>
                </table>
            </ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [CartView] WHERE (([cartid] = @cartid) AND ([status] = @status)) ORDER BY [id] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="cartid" SessionField="cid" Type="Int32" />
            <asp:Parameter DefaultValue="Yes" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderId" 
        DataSourceID="SqlDataSource1" PageSize="1" Width="100%">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
            <asp:BoundField DataField="TotalQuantity" HeaderText="TotalQuantity" SortExpression="TotalQuantity" />
            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [OrderTable] WHERE (([OrderId] = @OrderId) AND ([Status] = @Status))">
        <SelectParameters>
            <asp:SessionParameter Name="OrderId" SessionField="oid" Type="Int32" />
            <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h1 style="color: #FF0000">
        tHANKS..yOUR ORDER IS SUCCESSFULY PLACED</h1>
</asp:Content>

