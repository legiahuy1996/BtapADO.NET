using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btapADO.NET
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }   
        private void load()
        {
            DataAccess DA = new DataAccess();
            List<SqlParameter> lst = new List<SqlParameter>();
            lst.Add(new SqlParameter("@EmpCode", EmpCode.Text));
            lst.Add(new SqlParameter("@FullName", FullName.Text));
            lst.Add(new SqlParameter("@Company", CompanyName.Text));

            DataTable data = DA.ExecuteProcResult("sp_F03", lst);
            if (data.Rows.Count == 0)
            {
                Response.Write("Không tồn tại nhân viên bạn tìm kiếm");
                gvEmp.DataSource = null;
                gvEmp.DataBind();
            }  
            else
            {
                gvEmp.DataSource = data;
                gvEmp.DataBind();
            }
           
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (EmpCode.Text == "" && FullName.Text == "" && CompanyName.Text == "")
                Response.Write("Vui lòng nhập thông tin để tìm");
            else
                load();   
        }

        protected void gvEmp_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEmp.PageIndex = e.NewPageIndex;   //trang hien tai
            int trang_thu = e.NewPageIndex;      //the hien trang thu may
            int so_dong = gvEmp.PageSize;       
            load();
        }

 
    }
}