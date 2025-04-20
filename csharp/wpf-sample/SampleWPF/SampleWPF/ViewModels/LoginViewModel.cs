using SampleWPF.Helpers;
using SampleWPF.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleWPF.ViewModels
{
    public class LoginViewModel : ViewModelBase
    {
        public string UserId { get; set; }

        public string Password { get; set; }
        private string _errorMessage;
        public string ErrorMessage
        {
            get => _errorMessage;
            set => SetProperty(ref _errorMessage, value);
        }

        public LoginViewModel()
        {
        }

        private DelegateCommand _loginCommand;
        public DelegateCommand LoginCommand
        {
            get
            {
                return _loginCommand ?? (_loginCommand = new DelegateCommand(
                    _ =>
                    {
                        Login();
                    }));
            }
        }

        public event EventHandler LoginSuccessful;
        private void Login()
        {
            LoginSuccessful?.Invoke(this, EventArgs.Empty);
        }
    }
}
