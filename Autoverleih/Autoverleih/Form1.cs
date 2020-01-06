using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Autoverleih
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            LoadData();
        }

        //public object Form1_Load()

        //{
        //   return LoadData();
        //}



        private void LoadData()

        {

            try

            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=SYSTEM;Password=admin;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("SELECT * FROM T_CARS", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataSet ds = new DataSet();

                    oda.Fill(ds);

                    if (ds.Tables.Count > 0)

                    {

                        dataGridView1.DataSource = ds.Tables[0].DefaultView;

                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            //LoadData();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            AddEntry();
        }
        private void AddEntry()

        {

            try

            {
                TextBox TBox1 = (TextBox)Controls.Find("textBox1", true)[0];//Retrieve controls by name 
                TextBox TBox2 = (TextBox)Controls.Find("textBox2", true)[0];//Retrieve controls by name      

                string sqlstring = "INSERT INTO T_CARS(marke, modell, preisklasse) VALUES('" + TBox1.Text + "', '" + TBox2.Text + "', 2)";
                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=SYSTEM;Password=admin;";

                using (OracleConnection con = new OracleConnection(ConString))

                {
                      

                    OracleCommand cmd = new OracleCommand(sqlstring, con);

                    //OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());

            }

        }
    }

}
