using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Comp229_TeamAssign
{
    public class ConnectionClass
    {
        private static SqlConnection conn;
        private static SqlCommand cmd;

        static ConnectionClass()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229-TeamAssign"].ConnectionString;
            conn = new SqlConnection(connectionString);
        }
        public static void AddInfo(Info info)
        {
            string query = string.Format(@"Insert into MyBooks Values ({0}, '{1}', '{2}', '{3}', '{4}')",
              info.BookTitle, info.AuthorName, info.ISBN, info.Genre, info.Rating);
            cmd = new SqlCommand(query, conn);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}