//using System;
//using Oracle.ManagedDataAccess.Client;

//class OraTest
//{
//    OracleConnection con;
//    void Connect()
//    {
//        con = new OracleConnection();
//        con.ConnectionString = "User Id=SYSTEM;Password=admin;Data Source=//localhost:1521/orcl.dbs.autoverleih";
//        con.Open();
//        Console.WriteLine("Connected to Oracle" + con.ServerVersion);
//    }

//    void Close()
//    {
//        con.Close();
//        con.Dispose();
//    }

//    static void Main()
//    {
//        OraTest ot = new OraTest();
//        ot.Connect();
//        ot.Close();
//    }
//}


using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Autoverleih
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
