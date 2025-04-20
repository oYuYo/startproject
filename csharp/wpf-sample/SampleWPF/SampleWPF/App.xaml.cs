using System;
using System.Configuration;
using System.Data;
using System.Windows;
using SampleWPF.ViewModels;
using SampleWPF.Views;

namespace SampleWPF
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            var w = new LoginWindow();
            w.Show();
        }
    }
}
