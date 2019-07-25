
Partial Class Order
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Page.IsPostBack = False) Then
            Dim ab As New DataClassesDataContext
            Dim data = From tmp In ab.carttables Where tmp.cartid = Session("cid").ToString And tmp.Status = "yes" Select tmp
            For Each d In data
                TextBox8.Text = TextBox8.Text + d.Quantity
                TextBox9.Text = TextBox9.Text + d.Amount
            Next
        End If


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim o As New DataClassesDataContext
        Dim data = From tmp In o.SystemTables Where tmp.Systemid = 1 Select tmp

        Dim a As New OrderTable
        a.orderid = data.First.orderid
        a.CartId = Session("cid").ToString
        a.Name = TextBox1.Text
        a.Email = TextBox2.Text
        a.Mobile = TextBox4.Text
        a.Zipcode = TextBox5.Text
        a.Address = TextBox3.Text
        a.Zipcode = TextBox5.Text
        a.City = TextBox6.Text
        a.State = TextBox7.Text
        a.TotalAmount = TextBox9.Text
        a.TotalQuantity = TextBox8.Text
        a.status = "Yes"
        a.PaymentType = DropDownList1.SelectedItem.Text
        a.Date = System.DateTime.Now.Date.Date.Date.ToString
        o.OrderTables.InsertOnSubmit(a)
        data.First.OrderId = data.First.OrderId + 1
        data.First.CartId = data.First.CartId + 1
        o.SubmitChanges()
        Session("oid") = a.OrderId
        If DropDownList1.SelectedValue = 1 Then
            Response.Redirect("Payment.aspx")
        Else
            Response.Redirect("Thanks.aspx")
        End If

    End Sub
End Class
