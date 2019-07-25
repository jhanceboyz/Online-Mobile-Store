
Partial Class Payment
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim a As New PaymentTable
        a.OrderId = Session("oid").ToString
        a.CardType = DropDownList1.SelectedValue
        a.CardNumber = TextBox2.Text
        a.Name = TextBox1.Text
        a.ExpDate = DropDownList2.SelectedValue.ToString + "/" + DropDownList3.SelectedValue.ToString
        a.cvc = TextBox3.Text
        a.Status = "Paid"
        Dim data = From tmp In ab.OrderTables Where tmp.OrderId = a.OrderId Select tmp
        a.Amount = data.First.TotalAmount
        ab.PaymentTables.InsertOnSubmit(a)
        ab.SubmitChanges()
        Response.Redirect("Thanks.aspx")
    End Sub
End Class
