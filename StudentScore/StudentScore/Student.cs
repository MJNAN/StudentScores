using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace StudentScore
{
    public partial class Student : Form
    {
        public Student()
        {
            InitializeComponent();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            (new Student_Information()).ShowDialog();
        }

        private void Student_Load(object sender, EventArgs e)
        {

        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            (new Student_In_Group()).ShowDialog();
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            (new Student_Between_Group()).ShowDialog();
        }

        private void 学生成绩查看ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            (new Student_Total()).ShowDialog();
        }
    }
}
