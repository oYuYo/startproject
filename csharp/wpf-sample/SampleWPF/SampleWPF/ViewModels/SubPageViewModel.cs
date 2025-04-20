using SampleWPF.Helpers;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleWPF.ViewModels
{
    internal class SubPageViewModel : ViewModelBase
    {
        private string _userId;
        public string UserId
        {
            get => _userId;
            set => SetProperty(ref _userId, value);
        }

        public SubPageViewModel()
        {
        }
        private DelegateCommand _openCommand;
        public DelegateCommand OpenCommand
        {
            get
            {
                return _openCommand ?? (_openCommand = new DelegateCommand(
                    _ =>
                    {
                        Console.WriteLine("test");
                    }));
            }
        }
    }
}
