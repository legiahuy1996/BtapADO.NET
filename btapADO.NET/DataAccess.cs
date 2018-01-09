using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace btapADO.NET
{
    public class DataAccess
    {
        public DataTable ExecuteReader(string sql)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=btapcongty;Integrated Security=True"))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public bool ExecuteNonQuery(string sql)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=btapcongty;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                int dem = command.ExecuteNonQuery();
                if (dem == 0)
                    return false;
                return true;
            }
        }
        public DataTable ExecuteProcResult(string name,List<SqlParameter> lst)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=btapcongty;Integrated Security=True"))
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(name, conn);
                adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                foreach(SqlParameter para in lst)
                {
                    adapter.SelectCommand.Parameters.Add(para);
                }
                DataTable data = new DataTable();
                adapter.Fill(data);
                return data;
            }
        }
        public bool ExecuteProc(string sql,List<SqlParameter> lst)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=btapcongty;Integrated Security=True"))
            {
                 conn.Open();
                SqlCommand command = new SqlCommand(sql,conn);
             
                foreach (SqlParameter para in lst)
                {
                    command.Parameters.Add(para);
                }
                command.CommandType = CommandType.StoredProcedure;
                int dem = command.ExecuteNonQuery();
                if (dem == 0)
                    return false;
                return true;
            }
            }
      
        
    }
}