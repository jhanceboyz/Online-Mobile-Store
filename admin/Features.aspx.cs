using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Features : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
        Feature ab = new Feature();
        ab.Name = TextBox1.Text;
        ab.Body = TextBox2.Text;
        ab.Display = TextBox3.Text;
        ab.OS = TextBox4.Text;
        ab.Battery = TextBox5.Text;
        ab.Camera = TextBox6.Text;
        ab.Weight = TextBox7.Text;
        ab.Network = TextBox8.Text;
        ab.Sim = TextBox9.Text;
        ab.Category = DropDownList3.SelectedValue;
        ab.Brand = DropDownList2.SelectedValue;
        ab.Mobile = DropDownList1.SelectedValue;
        
        DataClassesDataContext ba = new DataClassesDataContext();
        ba.Features.InsertOnSubmit(ab);
        ba.SubmitChanges();


        Response.Redirect("Features.aspx");
    }
}