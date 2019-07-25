
Partial Class Cart
    Inherits System.Web.UI.Page

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList2.SelectedIndexChanged, DropDownList2.Load
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.mobile_names Where tmp.mobileid = Request.QueryString("i").ToString Select tmp

        If data.Count() <> 0 Then
            TextBox1.Text = data.First.price * DropDownList2.SelectedValue
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.SystemTables Where tmp.Systemid = 1 Select tmp
        Dim a As New CartTable
        a.CartId = data.First.Cartid
        a.MobileId = Request.QueryString("i")
        a.amount = TextBox1.Text
        a.Quantity = DropDownList2.SelectedValue
        a.status = "yes"
        ab.CartTables.InsertOnSubmit(a)
        ab.SubmitChanges()
        Session("cid") = a.cartid
        Response.Redirect("cart.aspx?i=" + Request.QueryString("i"))
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.CartTables Where tmp.CartId = Session("cid").ToString Select tmp

        If data.Count <> 0 Then
            For Each d In data
                d.Status = "No"
            Next
            ab.SubmitChanges()
            Response.Redirect("cart.aspx?i=" + Request.QueryString("i"))
        End If

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("order.aspx")
    End Sub

End Class
