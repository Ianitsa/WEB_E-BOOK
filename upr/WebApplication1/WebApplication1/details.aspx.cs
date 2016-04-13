using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
 

namespace WebApplication1
{
    public partial class details : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static SqlConnection CreateConnection()
        {
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = @"Data Source=XXX-PC\SQLEXPRESS;Initial Catalog=BooksDBSQL;Integrated Security=True";
            return connection;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = CreateConnection();
            using (conn)
            {
                SqlCommand myComand = new SqlCommand("INSERT_ShopCart", conn);
                myComand.CommandType = CommandType.StoredProcedure;
                myComand.CommandText = "INSERT_ShopCart";

                SqlParameter OrderID = new SqlParameter("@Order_id", SqlDbType.NVarChar);
                OrderID.Value = "user1";
                myComand.Parameters.Add(OrderID);

                SqlParameter BookID = new SqlParameter("@Book_id", SqlDbType.NVarChar);
                BookID.Value = ((Label)FormView1.FindControl("BookIDLabel")).Text;
                myComand.Parameters.Add(BookID);

                SqlParameter BookTitle = new SqlParameter("@BookTitle", SqlDbType.NVarChar);
                BookTitle.Value = ((Label)FormView1.FindControl("BookTitleLabel")).Text;
                myComand.Parameters.Add(BookTitle);

                SqlParameter Price = new SqlParameter("@Price", SqlDbType.Money);
                Price.Value = ((Label)FormView1.FindControl("BookPriceLabel")).Text;
                myComand.Parameters.Add(Price);

                SqlParameter Qty = new SqlParameter("@Qty", SqlDbType.Int);
                Qty.Value = ((TextBox)FormView1.FindControl("txtQuantity")).Text;
                myComand.Parameters.Add(Qty);

                try
                {
                    conn.Open();
                    myComand.ExecuteNonQuery();
                    Button btn = (Button)sender;
                    btn.Text = " Книгата/ите бяха добавени успешно ";
                    btn.Enabled = false;

                }
                catch (SqlException se)
                {
                    Label1.Text = se.ToString();
                }

            }

            
        }

        protected void LinkBtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Books.aspx");
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            FormView1.PageIndex = e.NewPageIndex;
        }

         
         
    }
}