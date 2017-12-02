using System;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace StudentScore
{
    static class Program
    {
        public static string teacher_id;
        public static string teacher_name;
        public static string student_id;
        public static string student_name;
        public static string student_group;
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new login());
        }
    }
}
