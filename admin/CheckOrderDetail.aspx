<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/aMasterPage.master" AutoEventWireup="false" CodeFile="CheckOrderDetail.aspx.vb" Inherits="Admin_CheckOrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        Width="100%">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                SortExpression="Id" />
            <asp:BoundField DataField="CartId" HeaderText="CartId" 
                SortExpression="CartId" />
            <asp:BoundField DataField="mobileName" HeaderText="MobileName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Our Price" 
                SortExpression="OurPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="131px" 
                        ImageUrl='<%# Eval("Image") %>' Width="128px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [CartView] WHERE (([CartId] = @CartId) AND ([Status] = @Status)) ORDER BY [Id] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="CartId" QueryStringField="i" Type="Int32" />
            <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

