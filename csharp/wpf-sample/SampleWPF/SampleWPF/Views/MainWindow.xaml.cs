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
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.Loaded += MainWindow_Loaded;

            if (DataContext is MainViewModel vm)
            {
                vm.LogoutSuccessful += ViewModel_LogoutSuccessful;
            }
        }

        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            if (DataContext is MainViewModel vm)
            {
                vm.LogoutSuccessful -= ViewModel_LogoutSuccessful;
                vm.LogoutSuccessful += ViewModel_LogoutSuccessful;
            }
        }

        private void ViewModel_LogoutSuccessful(object sender, System.EventArgs e)
        {
            // メイン画面を表示
            LoginWindow loginWindow = new LoginWindow();
            loginWindow.Show();

            // ログイン画面を閉じる
            this.Close();
        }

        private void OpenPage_Click(object sender, RoutedEventArgs e)
        {
            var userId = (this.DataContext as MainViewModel).UserId;

            var vm = new SubPageViewModel();
            vm.UserId = userId;

            SubPage subWindow = new SubPage();
            subWindow.DataContext = vm;

            mainFrame.Navigate(subWindow);
        }
    }
}