<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="editcategory.aspx.cs" Inherits="editcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
        EDIT LISTED CATEGORIES</h1>
    <p style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="categoryid" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="categoryid" HeaderText="categoryid" 
                    InsertVisible="False" ReadOnly="True" SortExpression="categoryid" />
                <asp:BoundField DataField="categoryname" HeaderText="categoryname" 
                    SortExpression="categoryname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
            DeleteCommand="DELETE FROM [category] WHERE [categoryid] = @categoryid" 
            InsertCommand="INSERT INTO [category] ([categoryname]) VALUES (@categoryname)" 
            SelectCommand="SELECT * FROM [category] ORDER BY [categoryid]" 
            UpdateCommand="UPDATE [category] SET [categoryname] = @categoryname WHERE [categoryid] = @categoryid">
            <DeleteParameters>
                <asp:Parameter Name="categoryid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="categoryname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="categoryname" Type="String" />
                <asp:Parameter Name="categoryid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

