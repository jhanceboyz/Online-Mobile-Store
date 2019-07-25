<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="productdesc.aspx.cs" Inherits="appleDesc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 634px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="mobileid" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:Image ID="Image1" runat="server" Height="297px" 
                                    ImageUrl='<%# Eval("image") %>' Width="412px" />
                            </td>
                            <td>
                                <h2>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("mobilename") %>'></asp:Label>
                                </h2>
                                <p>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </p>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                               <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl='<%# Eval("mobileid", "~/cart.aspx?i={0}") %>'>Add To Cart</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="featuresid" DataSourceID="SqlDataSource2" Font-Bold="True" 
        Font-Size="Larger" Height="50px" Width="50%">
        <AlternatingRowStyle Width="125px" />
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Body" HeaderText="Body" SortExpression="Body" />
            <asp:BoundField DataField="Display" HeaderText="Display" 
                SortExpression="Display" />
            <asp:BoundField DataField="OS" HeaderText="OS" SortExpression="OS" />
            <asp:BoundField DataField="Battery" HeaderText="Battery" 
                SortExpression="Battery" />
            <asp:BoundField DataField="Camera" HeaderText="Camera" 
                SortExpression="Camera" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" 
                SortExpression="Weight" />
            <asp:BoundField DataField="Network" HeaderText="Network" 
                SortExpression="Network" />
            <asp:BoundField DataField="Sim" HeaderText="Sim" SortExpression="Sim" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [Features] WHERE ([Mobile] = @Mobile)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Mobile" QueryStringField="i" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [mobile name] WHERE ([mobileid] = @mobileid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="mobileid" QueryStringField="i" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

