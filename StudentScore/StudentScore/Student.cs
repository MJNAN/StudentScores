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
    }
}
