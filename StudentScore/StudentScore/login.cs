using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace StudentScore
{
    public partial class login : Form
    {
        public static string result;
        MySqlConnection mysql;
        public login()
        {
            InitializeComponent();
        }
        //end of 自适应大小
        //自定义回车按钮功能

        //自定义回车按钮功能

        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void label2_Click(object sender, EventArgs e)
        {

        }
        private void button2_Click(object sender, EventArgs e)
        {

        }
        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }
        private void Form1_Load(object sender, EventArgs e)
        {
            mysql = getMySqlCon();
            radioButton1.Checked = true;//add
        }
        public static MySqlConnection getMySqlCon()
        {
            String mysqlStr = "Database=studentscores;Data Source=127.0.0.1;User Id=root;Password=123456;pooling=false;CharSet=utf8;port=3306";
            MySqlConnection mysql = new MySqlConnection(mysqlStr);
            return mysql;
        }
        public static MySqlCommand getSqlCommand(String sql, MySqlConnection mysql)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(sql, mysql);
            return mySqlCommand;
        }
        public static string getResultset(MySqlCommand mySqlCommand)
        {
            MySqlDataReader reader = mySqlCommand.ExecuteReader();
            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        return reader.GetString(0);
                    }
                    else
                    {
                        return "";
                    }
                }
            }
            catch (Exception)
            {
                Console.WriteLine("查询失败了！");
            }
            finally
            {
                reader.Close();
            }
            return "";
        }

        public static string getResultset2(MySqlCommand mySqlCommand)
        {
            MySqlDataReader reader = mySqlCommand.ExecuteReader();
            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        Program.teacher_id = reader.GetString(0);
                        Program.teacher_name = reader.GetString(1);
                    }
                    else
                    {
                        return "";
                    }
                }
            }
            catch (Exception)
            {
                Console.WriteLine("查询失败了！");
            }
            finally
            {
                reader.Close();
            }
            return "";
        }
        public static string getResultset3(MySqlCommand mySqlCommand)
        {
            MySqlDataReader reader = mySqlCommand.ExecuteReader();
            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        Program.student_id = reader.GetString(0);
                        Program.student_name = reader.GetString(1);
                      

                    }
                    else
                    {
                        return "";
                    }
                }
            }
            catch (Exception)
            {
                Console.WriteLine("查询失败了！");
            }
            finally
            {
                reader.Close();
            }
            return "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string Use_ID = textBox1.Text;
            string Password = textBox2.Text;
            mysql.Open();
            //查询sql
            string Use_Status = "";
            if (radioButton2.Checked)
                Use_Status = "Teacher";
            else
                Use_Status = "Student";

            String sqlSearch = "select Password from syuser where Use_ID=\"" + Use_ID + "\"and Use_Status=\"" + Use_Status + "\"";
            MySqlCommand mySqlCommand = getSqlCommand(sqlSearch, mysql);
            string aa = getResultset(mySqlCommand);

            if (aa.Equals(Password))
            {
                MessageBox.Show("登录成功");  
                if (Use_Status.Equals("Teacher"))
                {
                    sqlSearch = "select Teacher_ID,Teacher_Name from teacher_information where Teacher_ID=\"" + Use_ID +"\"";
                    mySqlCommand = getSqlCommand(sqlSearch, mysql);
                    getResultset2(mySqlCommand);

                    (new Teacher()).Show();
                }
                if (Use_Status.Equals("Student"))
                {
                    sqlSearch = "select Student_ID,Student_Name from student_information where Student_ID=\"" + Use_ID + "\"";
                    mySqlCommand = getSqlCommand(sqlSearch, mysql);
                    getResultset3(mySqlCommand);
                    (new Student()).Show();
                }
                  
                this.Hide();
            }
            else
            {
                MessageBox.Show("登录失败");
            }


            //记得关闭
            mysql.Close();
        }

        private void login_Load(object sender, EventArgs e)
        {
            mysql = getMySqlCon();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}
