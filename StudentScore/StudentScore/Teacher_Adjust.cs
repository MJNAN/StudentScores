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
    public partial class Teacher_Adjust : Form
    {
        public Teacher_Adjust()
        {
            InitializeComponent();
        }
        public static MySqlConnection getMySqlCon()
        {
            String mysqlStr = "Database=studentscores;Data Source=127.0.0.1;User Id=root;Password=123456;pooling=false;CharSet=utf8;port=3306";
            MySqlConnection mysql = new MySqlConnection(mysqlStr);
            return mysql;
        }
        public static MySqlCommand getSqlCommand1(String sql, MySqlConnection mysql)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(sql, mysql);
            return mySqlCommand;
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
        public static MySqlCommand getSqlCommand(String sql, MySqlConnection mysql)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(sql, mysql);
            return mySqlCommand;
        }
        private void Teacher_Adjust_Load(object sender, EventArgs e)
        {
            textBox1.Text = Program.teacher_id;
            textBox2.Text = Program.teacher_name;
            mysql = getMySqlCon();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            string Student_in_group_Pro = textBox1.Text;
            string Student_between_group_Pro = textBox2.Text;
            string Teacher_independ_Pro = textBox3.Text;
            mysql.Open();
            String sqlUpdate = "update teacher_adjust set Student_in_group_Pro = '" + textBox1.Text + "',Student_between_group_Pro='" + textBox2.Text + " ',Teacher_independ_Pro='" + textBox3.Text + " ' where Regulator_ID = " + textBox1.Text;
            MySqlCommand mySqlCommand = getSqlCommand1(sqlUpdate, mysql);
            getUpdate(mySqlCommand);
            mysql.Close();
        }


    }
}
