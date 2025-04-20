using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace SampleWPF.ViewModels
{
    /// <summary>
    /// ViewModelの基底クラス
    /// </summary>
    //INotifyPropertyChangedでViewModelからViewへプロパティが変更されたことを通知する
    public abstract class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        //CallerMemberNameを付けると、propertyNameが空の場合は呼び出し元のプロパティ名となる
        protected bool SetProperty<T>(ref T target, T value, [CallerMemberName] string? propertyName = null)
        {
            if (Equals(target, value))
            {
                return false;
            }
            target = value;
            OnPropertyChanged(propertyName);
            return true;
        }
    }
}