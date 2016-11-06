using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ThietKeGiaoDien
{
    public partial class frm_trangchu : Form
    {
        public frm_trangchu()
        {
            InitializeComponent();
        }

        private void TrangChu_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void thongtin_Click(object sender, EventArgs e)
        {
            Form frm = new frm_tracuu();
            frm.ShowDialog();
        }

        private void trogiup_Click(object sender, EventArgs e)
        {
            Form frm = new frm_trogiup();
            frm.ShowDialog();
        }

        private void guiphanhoi_Click(object sender, EventArgs e)
        {
            Form frm = new frm_phanhoi();
            frm.ShowDialog();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btn_DK_Click(object sender, EventArgs e)
        {
            Form frm = new frm_dangky();
            frm.ShowDialog();
        }

        private void btn_DN_Click(object sender, EventArgs e)
        {
            Form frm = new frm_login();
            frm.ShowDialog();
        }

        private void btn_HT_Click(object sender, EventArgs e)
        {
            Form frm = new frm_tratu_dichvb();
            frm.ShowDialog();
        }
    }
}
