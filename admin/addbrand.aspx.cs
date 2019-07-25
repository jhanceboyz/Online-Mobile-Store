using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addbrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext a=new DataClassesDataContext();
        var data = from tmp in a.SystemTables where tmp.systemid == 1 select tmp;
        brand_name ba = new brand_name();
        ba.brandname = TextBox1.Text;
        ba.logo = "~/addbrand/" + data.First().imageid.ToString() + ".jpg";
        FileUpload1.SaveAs(Server.MapPath(ba.logo));
        data.First().imageid=data.First().imageid + 1;


        a.brand_names.InsertOnSubmit(ba);
        a.SubmitChanges();


        Response.Redirect("addbrand.aspx");

        
    }
}