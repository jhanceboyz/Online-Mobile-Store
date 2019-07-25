<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="editmobile.aspx.cs" Inherits="admin_editmobile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
        EDIT LISTED MOBILES</h1>
    <h3 style="text-align: center">
        Category<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="categoryname" 
            DataValueField="categoryid" AutoPostBack="True">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp; Brand<asp:DropDownList ID="DropDownList2" runat="server" 
            AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="brandname" 
            DataValueField="brandid">
        </asp:DropDownList>
    </h3>
    <h3 style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
            SelectCommand="SELECT [brandid], [brandname] FROM [brand name]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" DataKeyNames="mobileid" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="mobileid" HeaderText="mobileid" 
                    InsertVisible="False" ReadOnly="True" SortExpression="mobileid" />
                <asp:BoundField DataField="categoryid" HeaderText="categoryid" 
                    SortExpression="categoryid" />
                <asp:BoundField DataField="brandid" HeaderText="brandid" 
                    SortExpression="brandid" />
                <asp:BoundField DataField="mobilename" HeaderText="mobilename" 
                    SortExpression="mobilename" />
                <asp:BoundField DataField="description" HeaderText="description" 
                    SortExpression="description" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="101px" 
                            ImageUrl='<%# Eval("image") %>' Width="103px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No Record Found
            </EmptyDataTemplate>
        </asp:GridView>
    </h3>
    <p style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
            
            SelectCommand="SELECT * FROM [mobile name] WHERE (([categoryid] = @categoryid) AND ([brandid] = @brandid)) ORDER BY [mobileid] DESC" 
            DeleteCommand="DELETE FROM [mobile name] WHERE [mobileid] = @mobileid" 
            InsertCommand="INSERT INTO [mobile name] ([categoryid], [brandid], [mobilename], [description], [image], [price]) VALUES (@categoryid, @brandid, @mobilename, @description, @image, @price)" 
            
            UpdateCommand="UPDATE [mobile name] SET [categoryid] = @categoryid, [brandid] = @brandid, [mobilename] = @mobilename, [description] = @description, [image] = @image, [price] = @price WHERE [mobileid] = @mobileid">
            <DeleteParameters>
                <asp:Parameter Name="mobileid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="categoryid" Type="Int32" />
                <asp:Parameter Name="brandid" Type="Int32" />
                <asp:Parameter Name="mobilename" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="price" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="categoryid" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList2" Name="brandid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="categoryid" Type="Int32" />
                <asp:Parameter Name="brandid" Type="Int32" />
                <asp:Parameter Name="mobilename" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="mobileid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
            SelectCommand="SELECT * FROM [category]">
        </asp:SqlDataSource>
    </p>
    <p style="text-align: center">
        &nbsp;</p>
</asp:Content>

