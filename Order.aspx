<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Order.aspx.vb" Inherits="Order" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%">
    <Columns>
        <asp:BoundField DataField="MobileName" HeaderText="Mobile Name" SortExpression="ProductName" />
        <asp:BoundField DataField="price" HeaderText="Our Price" SortExpression="ourprice" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
        <asp:TemplateField><ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="187px" ImageUrl='<%# Eval("image") %>' Width="245px" />
        </ItemTemplate></asp:TemplateField>
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [CartView] WHERE (([cartid] = @cartid) AND ([status] = @status)) ORDER BY [id] DESC">
        <SelectParameters>
            <asp:SessionParameter Name="cartid" SessionField="cid" Type="Int32" />
            <asp:Parameter DefaultValue="Yes" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <table class="style1">
        <tr>
            <td>Total Quantity</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True">0</asp:TextBox>
            </td>
            <td>Total Amount</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="TextBox1" 
                    ValidChars="qazwsxedcrfvtgbyhnujmikolp QAZWSXEDCRFVTGBYHNUJMIKOLP">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td>Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox4" FilterType="Numbers">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Invalid" 
                    ForeColor="#FF3300" MaximumValue="9999999999" MinimumValue="7200000000" 
                    Type="Double" ValidationGroup="1"></asp:RangeValidator>
            </td>
            <td>Zipcode</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="6"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox5" FilterType="Numbers">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Invalid" 
                    ForeColor="#FF3300" MaximumValue="999999" MinimumValue="100000" 
                    Type="Double" ValidationGroup="1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td rowspan="2">
               Address
            </td>
            <td rowspan="2">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td>City</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="TextBox6"
                    ValidChars="qazwsxedcrfvtgbyhnujmikolp QAZWSXEDCRFVTGBYHNUJMIKOLP">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox7_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="TextBox7"
                    ValidChars="qazwsxedcrfvtgbyhnujmikolp QAZWSXEDCRFVTGBYHNUJMIKOLP">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Payment Type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">Card Payment</asp:ListItem>
                    <asp:ListItem Value="2">Cash on Delivery</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="Button1" runat="server" Text="Proceed To Payment" 
                    ValidationGroup="1" />
            </td>
        </tr>
    </table>
</asp:Content>

