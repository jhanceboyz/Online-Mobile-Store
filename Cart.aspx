<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Cart.aspx.vb" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 251px;
        }
        .style3
        {
            width: 318px;
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
                       
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [mobile name] WHERE ([mobileid] = @ProductId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductId" QueryStringField="i" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h3 style="text-align: center">Select Your Quantity for Add Product in Cart</h3>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="style1">
                <tr>
                    <td>
                        Quantity</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="26px" Text="Add To Cart" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
</asp:UpdatePanel>
   
    
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
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="58px" PostBackUrl='<%# Eval("id", "~/Delcart.aspx?i={0}") %>' Width="44px" ImageUrl="~/Images/Delete.png" />
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
    <table class="style1">
        <tr>
            <td> <asp:Button ID="Button2" runat="server" Text="Continue Shoping" /></td>
            <td><asp:Button ID="Button3" runat="server" Text="Empty Cart" /></td>
            <td><asp:Button ID="Button4" runat="server" Text="Proceed To Payment " /></td>
        </tr>
    </table>
</asp:Content>

