using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_newcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        category a = new category();
        a.categoryname = TextBox1.Text;


        DataClassesDataContext ab = new DataClassesDataContext();
        ab.categories.InsertOnSubmit(a);
        ab.SubmitChanges();


        Response.Redirect("addcategory.aspx");

    }
}