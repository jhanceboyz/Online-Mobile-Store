<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Payment.aspx.vb" Inherits="Payment" %>

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

    <br />
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderId" 
        DataSourceID="SqlDataSource1" PageSize="1" Width="100%">
        <Columns>
            <asp:BoundField DataField="OrderId" HeaderText="OrderId" ReadOnly="True" SortExpression="OrderId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
            <asp:BoundField DataField="TotalQuantity" HeaderText="TotalQuantity" SortExpression="TotalQuantity" />
            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASPNETDBConnectionString %>" 
        SelectCommand="SELECT * FROM [OrderTable] WHERE (([OrderId] = @OrderId) AND ([Status] = @Status))">
        <SelectParameters>
            <asp:SessionParameter Name="OrderId" SessionField="oid" Type="Int32" />
            <asp:Parameter DefaultValue="Yes" Name="Status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h1 align="center">Give Payment Detail to Complete Your Order</h1>
    
    <table class="style1">
        <tr>
            <td>Card Type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">Select Card Type</asp:ListItem>
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>VISA Card</asp:ListItem>
                    <asp:ListItem>Debit Card</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Name on Card</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" 
                    ValidChars="qazwsxedcrfvtgbyhnujmikolp QAZWSXEDCRFVTGBYHNUJMIKOLP">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Card Number</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="16"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox2">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid" 
                    ForeColor="#FF3300" MaximumValue="9999999999999999" MinimumValue="1000000000000000" 
                    Type="Double" ValidationGroup="1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Expiry Date</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="0">Month</asp:ListItem>
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>Jun</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem Value="Aug">Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem Value="0">Year</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                    <asp:ListItem>2028</asp:ListItem>
                    <asp:ListItem>2029</asp:ListItem>
                    <asp:ListItem>2030</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1" InitialValue="0"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>CVC</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" MaxLength="3"></asp:TextBox>              
                <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox3">
                </cc1:FilteredTextBoxExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Invalid" 
                    ForeColor="#FF3300" MaximumValue="999" MinimumValue="100" 
                    Type="Double" ValidationGroup="1"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Proceed to Payment" 
                    onclick="Button1_Click" ValidationGroup="1" />
            </td>
            
        </tr>
    </table>
</asp:Content>

