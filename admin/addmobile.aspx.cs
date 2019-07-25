using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addmobile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext ab = new DataClassesDataContext();
        var data = from tmp in ab.SystemTables where tmp.systemid == 1 select tmp;
        mobile_name b = new mobile_name();
        b.brandid = Convert.ToInt32( DropDownList2.SelectedValue);
        b.categoryid = Convert.ToInt32(DropDownList1.SelectedValue);
        b.description = TextBox4.Text;
        b.price = TextBox6.Text;
        b.mobilename = TextBox3.Text;
        b.image = "~/addmobile/" + data.First().imageid.ToString() + ".jpg";
        FileUpload1.SaveAs(Server.MapPath(b.image));
        data.First().imageid = data.First().imageid + 1;

        ab.mobile_names.InsertOnSubmit(b);
        ab.SubmitChanges();

        Response.Redirect("addmobile.aspx");


    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}