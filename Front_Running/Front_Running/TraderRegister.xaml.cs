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
    /// Interaction logic for TraderRegister.xaml
    /// </summary>
    public partial class TraderRegister : Window
    {
        public TraderRegister()
        {
            InitializeComponent();
            this.SizeToContent = SizeToContent.WidthAndHeight;
        }
        private void Login_Click(object sender, RoutedEventArgs e)

        {

            Login_Trader logintrader = new Login_Trader();

            logintrader.Show();

            Close();

        }
        public void Reset()

        {
            textBoxuserName.Text = "";

            textBoxFirstName.Text = "";

            textBoxLastName.Text = "";

            passwordBox1.Password = "";

            passwordBoxConfirm.Password = "";
            
            checkBox.IsChecked = false;


        }
        private void Submit_Click(object sender, RoutedEventArgs e)
        {

            if (textBoxuserName.Text.Length == 0)

            {

                errormessage.Text = "Enter a valid user name.";

                textBoxuserName.Focus();

            }


            string firstname = textBoxFirstName.Text;

            string lastname = textBoxLastName.Text;

            string uname = textBoxuserName.Text;

            string password = passwordBox1.Password;
            SqlConnection con2 = new SqlConnection(@"Data Source=GRAD89-HP;Integrated Security = SSPI;Initial Catalog=front_running");
            con2.Open();
            SqlCommand cmd2 = new SqlCommand($"select count(*) from TABLE_FOR_TC WHERE username = '{uname}'", con2);
            int condition = (int)cmd2.ExecuteScalar();
            con2.Close();
            if (condition > 0)
            {
                Reset();
                MessageBox.Show("username already exist, try something else");

            }
            
            else
            {




                if (passwordBox1.Password.Length == 0)

                {

                    errormessage.Text = "Enter password.";

                    passwordBox1.Focus();

                }

                else if (passwordBoxConfirm.Password.Length == 0)

                {

                    errormessage.Text = "Re enter the password .";

                    passwordBoxConfirm.Focus();

                }

                else if (passwordBox1.Password != passwordBoxConfirm.Password)

                {

                    errormessage.Text = "Confirm password must be same as password.";

                    passwordBoxConfirm.Focus();

                }

                else

                {

                    errormessage.Text = "";


                    SqlConnection con = new SqlConnection(@"Data Source=GRAD89-HP;Integrated Security = SSPI;Initial Catalog=front_running");

                    con.Open();
                    char tradtype = 'C';
                    if (checkBox.IsChecked == true)
                    {
                        tradtype = 'T';

                    }
                    SqlConnection con1 = new SqlConnection(@"Data Source=GRAD89-HP;Integrated Security = SSPI;Initial Catalog=front_running");
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand($"SELECT TOP 1 * FROM Table_for_tc ORDER BY ID DESC", con1);
                    Global.id = (int)cmd1.ExecuteScalar();
                    con1.Close();
                    Global.id += 1;
                    string sql = $"Insert into table_for_tc (ID, Username, FirstName, LastName, Pass_word, tradertype) values('{Global.id}','{uname}','{firstname}','{lastname}','{password}','{tradtype}')";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.CommandType = CommandType.Text;

                    cmd.ExecuteNonQuery();
                    
                    //if (checkBox.IsChecked == true)
                    //{
                    //    SqlCommand cmd1 = new SqlCommand($"Insert into PROP_TRADER (Username, FirstName, LastName, Password) values('{uname}','{firstname}','{lastname}','{password}')", con);
                    //    cmd1.CommandType = CommandType.Text;
                    //    cmd1.ExecuteNonQuery();

                    //}


                    con.Close();

                    errormessage.Text = "You have Registered successfully.";

                    Reset();

                }

            }
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            IntroPage ip = new IntroPage();
            ip.Show();
            this.Close();
        }
        private void Reset_Click(object sender, RoutedEventArgs e)
        {
            Reset();
        }
        
    }
}

