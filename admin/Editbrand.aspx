<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="Editbrand.aspx.cs" Inherits="admin_Editbrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
        EDIT LISTED BRAND</h1>
    <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="brandid" 
            DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="brandid" HeaderText="brandid" ReadOnly="True" 
                    SortExpression="brandid" />
                <asp:BoundField DataField="brandname" HeaderText="brandname" 
                    SortExpression="brandname" />
                <asp:BoundField DataField="logo" HeaderText="logo" SortExpression="logo" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="112px" 
                            ImageUrl='<%# Eval("logo") %>' Width="96px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
            DeleteCommand="DELETE FROM [brand name] WHERE [brandid] = @brandid" 
            InsertCommand="INSERT INTO [brand name] ([brandid], [brandname], [logo]) VALUES (@brandid, @brandname, @logo)" 
            SelectCommand="SELECT * FROM [brand name] ORDER BY [brandid]" 
            UpdateCommand="UPDATE [brand name] SET [brandname] = @brandname, [logo] = @logo WHERE [brandid] = @brandid">
            <DeleteParameters>
                <asp:Parameter Name="brandid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="brandid" Type="Int32" />
                <asp:Parameter Name="brandname" Type="String" />
                <asp:Parameter Name="logo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="brandname" Type="String" />
                <asp:Parameter Name="logo" Type="String" />
                <asp:Parameter Name="brandid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

