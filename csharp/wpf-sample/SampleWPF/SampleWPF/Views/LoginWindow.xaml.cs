using SampleWPF.ViewModels;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SampleWPF.Views
{
    /// <summary>
    /// </summary>
    public partial class LoginWindow : Window
    {
        public string UserId { get; set; }
        public LoginWindow()
        {
            InitializeComponent();

            // DataContextがLoginViewModelであることを確認し、イベントを購読
            if (DataContext is LoginViewModel vm)
            {
                vm.LoginSuccessful += ViewModel_LoginSuccessful;
            }
        }

        private void ViewModel_LoginSuccessful(object sender, System.EventArgs e)
        {
            var userId = (this.DataContext as LoginViewModel).UserId;

            // メイン画面を表示
            MainViewModel mainVM = new MainViewModel();
            mainVM.UserId = userId;

            MainWindow mainWindow = new MainWindow();
            mainWindow.DataContext = mainVM;
            mainWindow.Show();

            // ログイン画面を閉じる
            this.Close();
        }
        private void PasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (DataContext is LoginViewModel vm)
            {
                vm.Password = ((PasswordBox)sender).Password;
            }
        }
    }
}