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
                    FormView1.Visible = true;
                    FormView2.Visible = true;
                    FormView3.Visible = true;
                    FormView16.Visible = true;
                    FormView6.Visible = true;
                    Panel12.Visible = true;
                    if (DropDownList4.Enabled)
                    {
                        FormView4.Visible = true;
                        FormView5.Visible = true;
                        FormView17.Visible = true;
                        FormView18.Visible = true;
                        FormView23.Visible = true;
                        Panel23.Visible = true;
                        //FormViews for last to first
                        FormView10.Visible = true;
                        FormView11.Visible = true;
                        FormView12.Visible = true;
                        FormView20.Visible = true;
                        FormView22.Visible = true;
                        Panelfirstlast.Visible = true;
                        if (DropDownList5.Enabled)
                        {
                            FormView7.Visible = true;
                            FormView8.Visible = true;
                            FormView9.Visible = true;
                            FormView13.Visible = true;
                            FormView23.Visible = true;
                            //Between  dropdown 5 and 2
                            FormView14.Visible = true;
                            FormView15.Visible = true;
                            FormView19.Visible = true;
                            FormView21.Visible = true;
                            FormView24.Visible = true;
                            //Disable the formview between 2 and 4
                            FormView10.Visible = false;
                            FormView11.Visible = false;
                            FormView12.Visible = false;
                            FormView20.Visible = false;
                            FormView22.Visible = false;
                            Panel34.Visible = true;
                        }
                    }
                }
        }
    }
}