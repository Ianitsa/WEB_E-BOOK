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
    public partial class Cart : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         

        protected void BtnDelBooks_Click(object sender, EventArgs e)
        {
            foreach (DataListItem item in DataList1.Items)
                    {
                        if (((CheckBox)item.FindControl("CheckBox1")).Checked == true)
                        { 
                
                            SqlConnection conn =details.CreateConnection();
                            using (conn)
                            {
                                SqlCommand myComand = new SqlCommand("sp_DELBooks", conn);
                                myComand.CommandType = CommandType.StoredProcedure;
                                myComand.CommandText = "sp_DELBooks";

                                SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                                BookID.Value = ((Label)item.FindControl("BookIDLabel")).Text;
                                myComand.Parameters.Add(BookID);

                                SqlParameter countBooks = new SqlParameter("@B_id", SqlDbType.Int);
                                countBooks.Direction = ParameterDirection.Output;
                                myComand.Parameters.Add(countBooks);

                                try
                                {
                                    conn.Open();
                                    myComand.ExecuteNonQuery();
                                    Button btn = (Button)sender;
                                    //btn.Text = " Книгата/ите бяха изтрити успешно! ";
                                    //btn.Enabled = false;

                                    //SqlDataReader dr = myComand.ExecuteReader();
                                    //int res = (Int32)myComand.Parameters["@B_id"].Value;

                                }
                                catch (SqlException se)
                                {
                                    Label1.Text = se.ToString();
                                }

                            }
                
                
                        }


            
                    }
            DataList1.DataBind();


        }
    }
}