using System;
using System.Collections.Generic;
using System.Diagnostics;
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
    /// Interaction logic for Welcome_compliance.xaml
    /// </summary>
    public partial class Welcome_compliance : Window
    {
        public Welcome_compliance()
        {
            InitializeComponent();
            this.SizeToContent = SizeToContent.WidthAndHeight;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            ProcessStartInfo sInfo = new ProcessStartInfo("http://localhost:8080/DisplayCheck/check?username=AS82508&password=234");
            Process.Start(sInfo);
        }
    }
}
