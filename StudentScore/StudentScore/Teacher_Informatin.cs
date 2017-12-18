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
    public partial class Teacher_Informatin : Form
    {
        public static string result;
        MySqlConnection mysql;
        public Teacher_Informatin()
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

        public static string getResultset(MySqlCommand mySqlCommand)
        {
            //ExecuteReader();               
            MySqlDataReader reader = mySqlCommand.ExecuteReader();//读数据库
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
            finally
            {
                reader.Close();
            }
            return "";
        }
        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Teacher_Informatin_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 0;
            label7.Text = Program.teacher_id;
            label8.Text = Program.teacher_name;
            mysql = getMySqlCon();
        }
        public static MySqlCommand getSqlCommand(String sql, MySqlConnection mysql)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(sql, mysql);
            return mySqlCommand;
        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string Academe = comboBox1.Text;
            string Teacher_Password= textBox5.Text;
            mysql.Open();
            String sqlUpdate = "update teacher_information set Academe = '" + comboBox1.Text + "',Teacher_Password='" + textBox5.Text + " ' where Teacher_ID = " + label7.Text;
            MySqlCommand mySqlCommand = getSqlCommand1(sqlUpdate, mysql);
            getUpdate(mySqlCommand);
            String sqlUpdate2 = "update syuser set Password='" + textBox5.Text + " ' where Use_ID = " + label7.Text;
            MySqlCommand mySqlCommand2 = getSqlCommand(sqlUpdate2, mysql);
            getUpdate(mySqlCommand2);
            mysql.Close();
        }
    }
}
