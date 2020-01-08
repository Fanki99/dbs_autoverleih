﻿using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections;
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
            panel_welcome.BringToFront();
            dateTimePicker1.Format = DateTimePickerFormat.Custom;
            dateTimePicker1.CustomFormat = "dd.MM.yyyy";
            dateTimePicker2.Format = DateTimePickerFormat.Custom;
            dateTimePicker2.CustomFormat = "dd.MM.yyyy";
        }

        #region alt
        //private void LoadData()

        //{

        //    try

        //    {

        //        string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=SYSTEM;Password=admin;";

        //        using (OracleConnection con = new OracleConnection(ConString))

        //        {

        //            OracleCommand cmd = new OracleCommand("SELECT * FROM T_CARS", con);

        //            OracleDataAdapter oda = new OracleDataAdapter(cmd);

        //            DataSet ds = new DataSet();

        //            oda.Fill(ds);

        //            if (ds.Tables.Count > 0)

        //            {

        //                dataGridView1.DataSource = ds.Tables[0].DefaultView;

        //            }

        //        }

        //    }

        //    catch (Exception ex)

        //    {

        //        MessageBox.Show(ex.ToString());
        //        throw new Exception("Yeet");
        //    }

        //}


        //private void AddEntry()

        //{

        //    try

        //    {
        //        TextBox TBox1 = (TextBox)Controls.Find("textBox1", true)[0];//Retrieve controls by name 
        //        TextBox TBox2 = (TextBox)Controls.Find("textBox2", true)[0];//Retrieve controls by name      

        //        string sqlstring = "INSERT INTO T_CARS(marke, modell, preisklasse) VALUES('" + TBox1.Text + "', '" + TBox2.Text + "', 2)";
        //        string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=SYSTEM;Password=admin;";

        //        using (OracleConnection con = new OracleConnection(ConString))

        //        {


        //            OracleCommand cmd = new OracleCommand(sqlstring, con);

        //            //OracleDataAdapter oda = new OracleDataAdapter(cmd);

        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            con.Close();


        //        }
        //    }

        //    catch (Exception ex)

        //    {

        //        MessageBox.Show(ex.ToString());

        //    }

        //}
        #endregion

        private void personenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel_personen.Visible = true;
            panel_personen.BringToFront();
            Initialize_Personen();
        }

        private void Initialize_Personen()
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("select * from table(return_standorte())", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataTable dt = new DataTable();


                    oda.Fill(dt);


                    if (dt.Rows.Count > 0)

                    {
                        List<string> list = new List<string>();
                        foreach (DataRow row in dt.Rows)
                        {
                            list.Add(row["text"].ToString());
                        }
                        comboBox2.DataSource = list;
                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void buchungStornierenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel_buchungen_storno.Visible = true;
            panel_buchungen_storno.BringToFront();
            checkedListBox2.ClearSelected();
            Initialize_Buchungen_Storno();
        }

        private void Initialize_Buchungen_Storno()
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("select * from table(return_booking())", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataTable dt = new DataTable();


                    oda.Fill(dt);


                    if (dt.Rows.Count > 0)

                    {
                        List<string> list = new List<string>();
                        foreach (DataRow row in dt.Rows)
                        {
                            list.Add(row["id"] + " - " + row["kunde"].ToString() + " - " + row["car"].ToString() + " - " + row["von"].ToString().Split(' ')[0] + " - " + row["bis"].ToString().Split(' ')[0]);
                        }
                        checkedListBox2.DataSource = list;
                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if(checkBox2.Checked == true)
            {
                panel_mitarbeiter.Visible = true;
                panel_mitarbeiter.BringToFront();
            } else
            {
                panel_mitarbeiter.Visible = false;
                panel_mitarbeiter.SendToBack();
            }
        }

        private void buchungEintragenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel_buchungen.Visible = true;
            panel_buchungen.BringToFront();
            Initialize_Buchungen();
        }

        private void schadenEintragenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel_schaeden.Visible = true;
            panel_schaeden.BringToFront();
            Initialize_Schaeden();
        }

        private void schadenRepariertToolStripMenuItem_Click(object sender, EventArgs e)
        {
            panel_schaeden_storno.Visible = true;
            panel_schaeden_storno.BringToFront();
            Initialize_Schaeden_Storno();
        }
        private void button7_Click(object sender, EventArgs e)
        {
            panel_buchungen.Visible = true;
            panel_buchungen.BringToFront();
            Initialize_Buchungen();
        }

        #region funktionen
        private void Initialize_Buchungen()
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("select * from table(return_standorte())", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataTable dt = new DataTable();


                    oda.Fill(dt);


                    if (dt.Rows.Count > 0)

                    {
                        List<string> list = new List<string>();
                        foreach (DataRow row in dt.Rows) {
                            list.Add(row["text"].ToString());
                        }
                        comboBox1.DataSource = list;
                    }

                    OracleCommand cmd2 = new OracleCommand("select * from table(return_kunden())", con);

                    OracleDataAdapter oda2 = new OracleDataAdapter(cmd2);

                    DataTable dt2 = new DataTable();


                    oda2.Fill(dt2);


                    if (dt2.Rows.Count > 0)

                    {
                        List<string> list2 = new List<string>();
                        foreach (DataRow row in dt2.Rows)
                        {
                            list2.Add(row["text"].ToString());
                        }
                        comboBox5.DataSource = list2;
                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void Initialize_Schaeden()
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("select * from table(return_cars())", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataTable dt = new DataTable();


                    oda.Fill(dt);


                    if (dt.Rows.Count > 0)

                    {
                        List<string> list = new List<string>();
                        foreach (DataRow row in dt.Rows)
                        {
                            list.Add(row["text"].ToString());
                        }
                        comboBox4.DataSource = list;
                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void Initialize_Schaeden_Storno()
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("select * from table(return_schaden())", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataTable dt = new DataTable();


                    oda.Fill(dt);


                    if (dt.Rows.Count > 0)

                    {
                        List<string> list = new List<string>();
                        foreach (DataRow row in dt.Rows)
                        {
                            list.Add(row["id"] + " - " + row["schaden"].ToString() + " - " + row["car"].ToString());
                        }
                        checkedListBox3.DataSource = list;
                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }
        #endregion

        private void button6_Click(object sender, EventArgs e)
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {
                    OracleCommand cmd = new OracleCommand("schaden_repaired", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("schaden_id", OracleDbType.Int32).Value = checkedListBox3.CheckedItems[0].ToString().Split(' ')[0];

                    con.Open();
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Schaden als repariert gemeldet.");
                }
            }

            catch (Exception ex)

            {
                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {
                    OracleCommand cmd = new OracleCommand("add_booking", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("kunde", OracleDbType.Varchar2).Value = comboBox5.SelectedItem;
                    cmd.Parameters.Add("standort", OracleDbType.Varchar2).Value = comboBox1.SelectedItem;
                    cmd.Parameters.Add("car", OracleDbType.Varchar2).Value = checkedListBox1.CheckedItems[0];
                    cmd.Parameters.Add("von", OracleDbType.Varchar2).Value = dateTimePicker1.Value.Date.ToString().Split(' ')[0];
                    cmd.Parameters.Add("bis", OracleDbType.Varchar2).Value = dateTimePicker2.Value.Date.ToString().Split(' ')[0];

                    con.Open();
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Buchung eingetragen.");
                }
            }

            catch (Exception ex)

            {
                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {

                    OracleCommand cmd = new OracleCommand("select * from table(return_cars_date('"+comboBox1.SelectedItem+"'))", con);

                    OracleDataAdapter oda = new OracleDataAdapter(cmd);

                    DataTable dt = new DataTable();


                    oda.Fill(dt);


                    if (dt.Rows.Count > 0)

                    {
                        List<string> list = new List<string>();
                        foreach (DataRow row in dt.Rows)
                        {
                            list.Add(row["text"].ToString());
                        }
                        checkedListBox1.DataSource = list;
                    }

                }

            }

            catch (Exception ex)

            {

                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {
                    OracleCommand cmd = new OracleCommand("delete_booking", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("booking_id", OracleDbType.Int32).Value = checkedListBox2.CheckedItems[0].ToString().Split(' ')[0];

                    con.Open();
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Buchung storniert.");
                }
            }

            catch (Exception ex)

            {
                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {
                    OracleCommand cmd = new OracleCommand("add_schaden", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("car", OracleDbType.Varchar2).Value = comboBox4.SelectedItem.ToString();
                    cmd.Parameters.Add("schaden", OracleDbType.Varchar2).Value = richTextBox1.Text;
                    cmd.Parameters.Add("datum", OracleDbType.Varchar2).Value = dateTimePicker4.Value.Date.ToString().Split(' ')[0];

                    con.Open();
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Schaden gemeldet.");
                }
            }

            catch (Exception ex)

            {
                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (checkBox2.Checked) { 
            try
            {

                string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                using (OracleConnection con = new OracleConnection(ConString))

                {
                    OracleCommand cmd = new OracleCommand("add_mitarbeiter", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("_vorname", OracleDbType.Varchar2).Value = textBox1.Text;
                    cmd.Parameters.Add("_nachname", OracleDbType.Varchar2).Value = textBox2.Text;
                    cmd.Parameters.Add("_geburtsdatum", OracleDbType.Varchar2).Value = dateTimePicker3.Value.Date.ToString().Split(' ')[0];
                        if (checkBox1.Checked)
                        {
                            cmd.Parameters.Add("_fuehrerschein", OracleDbType.Varchar2).Value = 'y';
                        }else
                        {
                            cmd.Parameters.Add("_fuehrerschein", OracleDbType.Varchar2).Value = 'n';
                        }
                    cmd.Parameters.Add("_standort", OracleDbType.Varchar2).Value = comboBox2.SelectedItem.ToString();
                    cmd.Parameters.Add("_gehaltsstufe", OracleDbType.Int32).Value = textBox3.Text;

                    con.Open();
                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Mitarbeiter eingetragen.");
                }
            }

            catch (Exception ex)

            {
                MessageBox.Show(ex.ToString());
                throw new Exception("Yeet");
            }
            }
            else
            {
                try
                {

                    string ConString = "Data Source=//localhost:1521/orcl.dbs.autoverleih; User Id=mitarbeiter;Password=db19;";

                    using (OracleConnection con = new OracleConnection(ConString))

                    {
                        OracleCommand cmd = new OracleCommand("add_kunde", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("_vorname", OracleDbType.Varchar2).Value = textBox1.Text;
                        cmd.Parameters.Add("_nachname", OracleDbType.Varchar2).Value = textBox2.Text;
                        cmd.Parameters.Add("_geburtsdatum", OracleDbType.Varchar2).Value = dateTimePicker3.Value.Date.ToString().Split(' ')[0];
                        if (checkBox1.Checked)
                        {
                            cmd.Parameters.Add("_fuehrerschein", OracleDbType.Varchar2).Value = 'y';
                        }
                        else
                        {
                            cmd.Parameters.Add("_fuehrerschein", OracleDbType.Varchar2).Value = 'n';
                        }
                        if (checkBox3.Checked)
                        {
                            cmd.Parameters.Add("_stammkunde", OracleDbType.Varchar2).Value = 'y';
                        }
                        else
                        {
                            cmd.Parameters.Add("_stammkunde", OracleDbType.Varchar2).Value = 'n';
                        }

                        con.Open();
                        OracleDataAdapter da = new OracleDataAdapter(cmd);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        MessageBox.Show("Kunde eingetragen.");
                    }
                }

                catch (Exception ex)

                {
                    MessageBox.Show(ex.ToString());
                    throw new Exception("Yeet");
                }
            }
        }
    }

}
