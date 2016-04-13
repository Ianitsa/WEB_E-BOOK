using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string[] fileBreak = FileUpload1.FileName.Split(new char[] { '.' });
            if (!FileUpload1.HasFile)
            {
                LblMassageText.Text = "Изберете фаил!";
            }
            else if (fileBreak[1].ToUpper()!="JPG")
            {
                LblMassageText.Text = "Файла трябва да е JPG!";
            }
            else if (FileUpload1.PostedFile.ContentLength>100000)
            {
                LblMassageText.Text = "Файла трябва да е под 100 KB.";
            }
            else
            {
                FileUpload1.SaveAs(Server.MapPath("./BookPictures/") + FileUpload1.FileName);
                LblMassageText.Text = "<b>Файлът е добавен!</b><br/>";
                LblMassageText.Text = "Име:"+FileUpload1.FileName+"<br/>";
                LblMassageText.Text = "Размер:"+FileUpload1.PostedFile.ContentLength+"bytes<br/>";
            }
        }
    }
}