using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebFormMenu : MasterPage //: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkBtnCangePassAdmin_Click(object sender, EventArgs e)
        {
            ChangePassword chpass = (ChangePassword)LoginView1.FindControl("CangePassword1");
            chpass.Visible = true;
        }

        protected void LinkBtnCreateClient_Click(object sender, EventArgs e)
        {
            PasswordRecovery chpass = (PasswordRecovery)LoginView1.FindControl("PasswordRecovery1");
            chpass.Visible = true;
        }

        protected void LinkbtnCangePassUser_Click(object sender, EventArgs e)
        {
            ChangePassword chpass=(ChangePassword)LoginView1.FindControl("ChangePassword1");
            chpass.Visible = true;
        }

        protected void ImageButtonBG_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "bg-BG";
            Response.Redirect(Request.Path);
        }

        protected void ImageButtonUS_Click(object sender, ImageClickEventArgs e)
        {
            Session["lng"] = "en-US";
            Response.Redirect(Request.Path);
        }
    }
}