using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        bool initial = true;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (initial)
            {
                DropDownList2.Enabled = false;
                DropDownList3.Enabled = false;
                DropDownList4.Enabled = false;
                DropDownList5.Enabled = false;
                initial = false;
            }*/
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string currentSelection = DropDownList3.SelectedValue;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!DropDownList2.Enabled)
                DropDownList2.Enabled = true;
            else
                DropDownList2.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!DropDownList3.Enabled)
                DropDownList3.Enabled = true;
            else
                DropDownList3.Enabled = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (!DropDownList4.Enabled)
                DropDownList4.Enabled = true;
            else
                DropDownList4.Enabled = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (!DropDownList5.Enabled)
                DropDownList5.Enabled = true;
            else
                DropDownList5.Enabled = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (DropDownList2.Enabled)
                if (DropDownList3.Enabled)
                {
                    /*StringBuilder outputText = new StringBuilder();
                    string sel1 = DropDownList2.SelectedValue;
                    string sel2 = DropDownList3.SelectedValue;
                    SqlDataSource validate12 = new SqlDataSource();
                    //validate12.ConnectionString =  ConnectionStrings:ConnectionString;
                    //using(var conn = new SqlDataSource(connectionString))
                    outputText.Append(sel1 + " compatible with " + sel2+" over 10g;");
                    outputText.Append(sel1 + " compatible with " + sel2 + " over 80g, requires VIM3-40G4X option card;");
                    outputText.Append(sel1 + " incompatible with " + sel2 + " over 160g;");
                    string []a;
                    a= new string[3];
                    a= outputText.ToString().Split(';');*/
                    //TextBox1.Text = a[0]+"  "+a[1]+"  "+a[2];
                    //DataSet1 =SqlDataSource5.
                    FormView1.Visible = true;
                    FormView2.Visible = true;
                    FormView3.Visible = true;
                    if (DropDownList4.Enabled)
                    {
                        FormView4.Visible = true;
                        FormView5.Visible = true;
                        FormView6.Visible = true;
                        if (DropDownList5.Enabled)
                        {
                            FormView7.Visible = true;
                            FormView8.Visible = true;
                            FormView9.Visible = true;
                        }
                    }
                }
        }
    }
}