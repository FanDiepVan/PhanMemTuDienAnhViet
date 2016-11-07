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
    public partial class frm_login : Form
    {
        public frm_login()
        {
            InitializeComponent();
        }

        private void bt_huylogin_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void llb_quenpass_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
            Form frm = new frm_phuchoipass();
            frm.ShowDialog();

        }
    }
}
