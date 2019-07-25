<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AMasterPage.master" AutoEventWireup="true" CodeFile="checkfeedback.aspx.cs" Inherits="admin_checkfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
    CHECK FEEDBACK</h1>
<p style="text-align: center">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" Width="100%">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
            <asp:BoundField DataField="status" HeaderText="status" 
                SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        DeleteCommand="DELETE FROM [Feedback table] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Feedback table] ([firstname], [lastname], [email], [mobile], [message], [status]) VALUES (@firstname, @lastname, @email, @mobile, @message, @status)" 
        SelectCommand="SELECT * FROM [Feedback table] ORDER BY [id] DESC" 
        UpdateCommand="UPDATE [Feedback table] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [mobile] = @mobile, [message] = @message, [status] = @status WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

