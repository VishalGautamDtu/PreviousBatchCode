using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Front_Running
{
    /// <summary>
    /// Interaction logic for OrderSummary.xaml
    /// </summary>
    public partial class OrderSummary : Window
    {
        public OrderSummary()
        {
            
            InitializeComponent();
            
        }
      
        
        private void confirmOrder_Click(object sender, RoutedEventArgs e)
        {
            SqlConnection con2 = new SqlConnection(@"Data Source=GRAD89-HP;Integrated Security = SSPI;Initial Catalog=front_running");
            con2.Open();
            SqlCommand cmd2 = new SqlCommand($"SELECT TOP 1 * FROM Trades1 ORDER BY TRADE_ID DESC", con2);
            Global.tradeid = (int)cmd2.ExecuteScalar();
            con2.Close();
            Global.tradeid += 1;




            string security = labelSecurity.Content.ToString();
            string company = labelcompany.Content.ToString();
            string tradetype = labeltype.Content.ToString();
            char tradetypechar = tradetype[0];
            int quantity;
             Int32.TryParse(labelquantity.Content.ToString(), out quantity);
            double price;
            double.TryParse(labelPrice.Content.ToString(), out price);
            double value;
            double.TryParse(labelValue.Content.ToString(), out value);
            string date = labeltime.Content.ToString();
            Login_Trader obj = new Login_Trader();
           // string uname = obj.userName.Text;

            string tradertype;
            SqlConnection con1 = new SqlConnection(@"Data Source=GRAD89-HP;Integrated Security = SSPI;Initial Catalog=front_running");
            con1.Open();
            SqlCommand cmd1 = new SqlCommand($"SELECT TRADERTYPE FROM TABLE_FOR_TC WHERE USERNAME='{Global.uname}'",con1);
            tradertype = (string)cmd1.ExecuteScalar();
            char tradertypechar = tradertype[0];
            //cmd1.Parameters.AddWithValue("@TRADERTYPE", );
            //using (SqlDataReader reader = cmd1.ExecuteReader())
            //{
            //    tradertype = String.Format("{0}", reader["TRADERTYPE"]);
            //}

            string today = DateTime.Today.ToString("dd-MM-yyyy");
            string todaytime = DateTime.Now.ToString("HH:mm:ss");
                SqlConnection con = new SqlConnection(@"Data Source=GRAD89-HP;Integrated Security = SSPI;Initial Catalog=front_running");
            con.Open();
            SqlCommand cmd = new SqlCommand($"Insert into trades1 (TRADE_ID, USERNAME, TRADERTYPE, SECURITY, TRADE_DATE, TRADE_TIME, TRADE_TYPE, SECURITY_TYPE, QUANTITY, PRICE, VALUE) values('{Global.tradeid}','{Global.uname}','{tradertypechar}','{company}','{today}','{todaytime}','{tradetypechar}','{security}','{quantity}','{price}','{value}')" , con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            
            MessageBox.Show("Your order has been placed successfully");
            Welcome w = new Welcome();
            w.Show();
            this.Close();

        }

        private void cancelOrder_Click(object sender, RoutedEventArgs e)
        {
            Welcome w = new Welcome();
            w.Show();
            this.Close();
        }
    }
}
