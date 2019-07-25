<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="micromax.aspx.cs" Inherits="micromax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:DataList ID="DataList1" runat="server" DataKeyField="mobileid" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" style="text-align: center" 
        Width="100%">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="191px" 
                ImageUrl='<%# Eval("image") %>' Width="268px" 
                PostBackUrl='<%# Eval("mobileid", "~/productdesc.aspx?i={0}") %>' />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" 
                Text='<%# Eval("mobilename") %>' 
                PostBackUrl='<%# Eval("mobileid", "~/productdesc.aspx?i={0}") %>'></asp:LinkButton>
            <br />
            Price:-<asp:Label ID="Label1" runat="server" Text='<%# Eval("price") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" 
                PostBackUrl='<%# Eval("mobileid", "~/Cart.aspx?i={0}") %>'>Add To Cart</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        
        SelectCommand="SELECT * FROM [mobile name] WHERE (([brandid] = @brandid) AND ([categoryid] = @categoryid))">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="brandid" Type="Int32" />
            <asp:Parameter DefaultValue="5" Name="categoryid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>



