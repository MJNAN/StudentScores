using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace StudentScore
{
    public partial class Student_Information : Form
    {
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
        private void Student_Information_Load(object sender, EventArgs e)
        {
            textBox1.Text = Program.student_id;
            textBox2.Text = Program.student_name;     
            mysql = getMySqlCon();
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
            string Academe = textBox3.Text;
            string Major = textBox4.Text;
            string Student_Password = textBox6.Text;
            mysql.Open();
            String sqlUpdate = "update student_information set Academe = '" + textBox3.Text + "',Major='" + textBox4.Text + " ',Student_Password='" + textBox6.Text + " ' where Student_ID = " + textBox1.Text;
            MySqlCommand mySqlCommand = getSqlCommand(sqlUpdate, mysql);
            getUpdate(mySqlCommand);
            mysql.Close();
        }
    }
}
