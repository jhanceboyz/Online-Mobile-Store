<%@ Page Title="" Language="C#" MasterPageFile="~/userMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="bxtitle_901499978" class="box-title box-title-text-center box-title-line-middle wrap-title subtitle-small" style=" margin-top:50px"  data-delay="400">
    <div class="title-bar">
        <h5 style="font-size: 50px;"><a href="">THIS ORDER DETAIL</a></h5>
    </div>
    <p class="subtitle" style="font-size: 15px;">DETAIL ABOUT THE PRODUCT THIS USER ORDERS</p>
</div>
<div class="col-sm-1"></div>
<div class="col-sm-10">
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ourprice" HeaderText="Our Price" SortExpression="ourprice" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
            <asp:TemplateField><ItemTemplate>
                <table class="style1">
                    <tr>
                        <td><asp:Image ID="Image2" runat="server" Height="156px" ImageUrl='<%# Eval("image") %>' Width="186px" /></td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="58px" PostBackUrl='<%# Eval("id", "~/Delcart.aspx?i={0}") %>' Width="44px" ImageUrl="~/Images/Delete.png" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView><br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>"         
        SelectCommand="SELECT * FROM [CartView] WHERE (([CartID] = @CartID) AND ([Status] = @Quantity)) ORDER BY [Id] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="CartID" QueryStringField="i" Type="Int32" />
            <asp:Parameter DefaultValue="Yes" Name="Quantity" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
<div class="col-sm-1"></div>
</asp:Content>

