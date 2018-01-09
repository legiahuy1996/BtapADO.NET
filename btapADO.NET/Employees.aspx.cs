using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
namespace btapADO.NET
{
    public partial class Employees : System.Web.UI.Page
    {
        int stt = 1;
        public string get_stt()
        {
            return Convert.ToString(stt++);
        }
        private bool CheckTuoi(string date)
        {
            TimeSpan time = DateTime.Now - DateTime.Parse(date);
            int tuoi = time.Days;
            if (tuoi < 6570)
                return false;
            return true;
        }
        private int CheckJoinDay(string date,string DOB)
        {
            //Kiểm tra ngày vào làm có lớn hơn ngày hiện tại hay ko? 
            TimeSpan time1 = DateTime.Now - DateTime.Parse(date);
            int checkday1 = time1.Days;

            //Kiểm tra ngày vào làm có hợp lệ với tuổi nhân viên hay ko?
            TimeSpan time2 = DateTime.Parse(date) - DateTime.Parse(DOB);
           
            int checkday2 = time2.Days;
            if (checkday1 < 0)
                return 0;
            else if (checkday2 < 6570)
                return 1;
          
            return -1;
        }
        private void load()
        {
            string sqlEmp = "Select * from HR_tblEmp";
           

            DataAccess DA = new DataAccess();
            var dataEmp = DA.ExecuteReader(sqlEmp);
            

            gvEmp.DataSource = dataEmp;
            gvEmp.DataBind();

            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlDept = "select LSDeptID from LS_tblDepartment";
            string sqlJob = "SELECT LSJobTitleID FROM LS_tblJobTitle";
            string sqlNat = "SELECT LSNationalityID FROM dbo.LS_tblNationality";

            DataAccess DA = new DataAccess();

            var dataDept = DA.ExecuteReader(sqlDept);
            var dataJob = DA.ExecuteReader(sqlJob);
            var dataNat = DA.ExecuteReader(sqlNat);

            DeptID.DataTextField = "LSDeptID";
            DeptID.DataSource = dataDept;
            DeptID.DataValueField = "LSDeptID";
            DeptID.DataBind();

            JobTitleID.DataTextField = "LSJobTitleID";
            JobTitleID.DataValueField = "LSJobTitleID";
            JobTitleID.DataSource = dataJob;
            JobTitleID.DataBind();

            NationalityID.DataTextField = "LSNationalityID";
            NationalityID.DataValueField = "LSNationalityID";
            NationalityID.DataSource = dataNat;
            NationalityID.DataBind();
            load();
        }
      
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //Kiểm tra rỗng
         


            DataAccess DA = new DataAccess();

            int Active;
            if (rdActive1.Checked == true)
                Active = 1;
            else
                Active = 0;
            string Gender = "";
            if (RadioButtonGender1.Checked == true)
                Gender = "1";
            else
                Gender = "0";

            //Kiểm tra xem có đủ 18 tuổi ko?
            if (CheckTuoi(DOB.Text) == false)
                Response.Write("Chưa đủ 18 tuổi");

            //Kiểm tra ngày vào làm 
            int check = CheckJoinDay(JoinDate.Text, DOB.Text);
            switch(check)
            {
                case 0: Response.Write("Ngày vào làm ko được lớn hơn ngày hiện tại");
                    break;
                case 1: Response.Write("Ngày vào làm chưa hợp lệ với tuổi của nhân viên");
                    break;
                case -1:
                    break;
            }

               
            // parameter Procedure
            List<SqlParameter> lst = new List<SqlParameter>();
            lst.Add(new SqlParameter("@EmpCode", txtEmpCode.Text));
            lst.Add(new SqlParameter("@JoinDate", JoinDate.Text));
            lst.Add(new SqlParameter("@LSDeptID", DeptID.SelectedValue.ToString()));
            lst.Add(new SqlParameter("@Active", Active));
            lst.Add(new SqlParameter("@LSJobTitleID", JobTitleID.SelectedValue.ToString()));
            lst.Add(new SqlParameter("@FirstName", FirstName.Text));
            lst.Add(new SqlParameter("@LastName", LastName.Text));
            lst.Add(new SqlParameter("@DOB", DOB.Text));
            lst.Add(new SqlParameter("@Address", Address.Text));
            lst.Add(new SqlParameter("@Gender", Gender));
            lst.Add(new SqlParameter("@LSNationalityID", NationalityID.SelectedValue.ToString()));

           

        }

       

        protected void gvEmp_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEmp.PageIndex = e.NewPageIndex;   //trang hien tai
            int trang_thu = e.NewPageIndex;      //the hien trang thu may
            int so_dong = gvEmp.PageSize;       //moi trang co bao nhieu dong
            load();

        }

    

       
     
    }
}