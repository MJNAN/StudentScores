using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace StudentScore
{
    public partial class Student_Information : Form
    {
        public static string sqlSearch;
        public static string result;
        MySqlConnection mysql;
        public Student_Information()
        {
            InitializeComponent();
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
       
        private void Student_Information_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 0;
            comboBox2.SelectedIndex = 0;
            mysql = getMySqlCon();
            label8.Text = Program.student_id;
            label9.Text = Program.student_name;
            mysql.Open();
            String sqlSearch = "select student_information.Group from student_information where Student_ID='" + Program.student_id + "'";
            MySqlCommand mySqlCommand = getSqlCommand(sqlSearch, mysql);
            label10.Text = getResultset(mySqlCommand);
            mysql.Close();
        }

        public static void getUpdate(MySqlCommand mySqlCommand)
        {
            try
            {
                mySqlCommand.ExecuteNonQuery();
                MessageBox.Show("保存成功！");
            }
            catch
            {
                MessageBox.Show("保存失败！");
            }

        }
        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string Academe = comboBox1.Text;
            string Major = comboBox2.Text;
            string Student_Password = textBox4.Text;
            mysql.Open();
            String sqlUpdate1 = "update student_information set Academe = '" + comboBox1.Text + "',Major='" + comboBox2.Text + " ',Student_Password='" + textBox4.Text + " ' where Student_ID = " + label8.Text;
            MySqlCommand mySqlCommand1 = getSqlCommand(sqlUpdate1, mysql);
            getUpdate(mySqlCommand1);
            String sqlUpdate2 = "update syuser set Password='" + textBox4.Text + " ' where Use_ID = " + label8.Text;
            MySqlCommand mySqlCommand2 = getSqlCommand(sqlUpdate2, mysql);
            getUpdate(mySqlCommand2);
            mysql.Close();
        }
    }
}
