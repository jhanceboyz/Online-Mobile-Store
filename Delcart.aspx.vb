
Partial Class Delcart
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ab As New DataClassesDataContext
        Dim data = From tmp In ab.CartTables Where tmp.Id = Request.QueryString("i").ToString Select tmp
        For Each d In data
            d.Status = "No"
        Next
        ab.SubmitChanges()
        Response.Redirect("cart.aspx?i=" + data.First.MobileId.ToString)
    End Sub
End Class
