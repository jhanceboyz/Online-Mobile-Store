using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Feedback_table a = new Feedback_table();
        a.firstname = TextBox1.Text;
        a.lastname = TextBox2.Text;
        a.email = TextBox3.Text;
        a.mobile = Convert.ToInt16 (TextBox4.Text);
        a.message = TextBox5.Text;


        DataClassesDataContext ab = new DataClassesDataContext();
        ab.Feedback_tables.InsertOnSubmit(a);
        ab.SubmitChanges();


        Response.Redirect("feedback.aspx");

    }
}