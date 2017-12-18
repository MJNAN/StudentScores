using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace StudentScore
{
    public partial class Teacher : Form
    {
        public Teacher()
        {
            InitializeComponent();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            (new Teacher_Informatin()).ShowDialog();
        }
        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            (new Teacher_Independent()).ShowDialog();
        }
        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            (new Teacher_Adjust()).ShowDialog();
        }



        private void toolStripMenuItem5_Click(object sender, EventArgs e)
        {
            (new Teacher_Student_Total()).ShowDialog();
        }
    }
}
