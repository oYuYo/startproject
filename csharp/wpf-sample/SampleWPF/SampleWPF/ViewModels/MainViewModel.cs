using SampleWPF.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleWPF.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private string _userId;
        public string UserId 
        { 
            get => _userId;
            set => SetProperty(ref _userId, value);
        }
        public MainViewModel() 
        {
            
        }
        private DelegateCommand _logoutCommand;
        public DelegateCommand LogoutCommand
        {
            get
            {
                return _logoutCommand ?? (_logoutCommand = new DelegateCommand(
                    _ =>
                    {
                        Logout();
                    }));
            }
        }
        public event EventHandler LogoutSuccessful;
        private void Logout()
        {
            LogoutSuccessful?.Invoke(this, EventArgs.Empty);
        }
    }
}
