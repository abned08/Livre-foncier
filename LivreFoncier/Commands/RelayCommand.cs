using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace LivreFoncier.Commands
{
    public class RelayCommand : ICommand
    {
        private Action DoWord;
        private Func<bool> CanDo;


        public RelayCommand(Action doWord, Func< bool> canDo)
        {
            this.CanDo = canDo;
            this.DoWord = doWord;
            CommandManager.RequerySuggested += (o, e) => Changed();
        }


        public event EventHandler CanExecuteChanged;
        public bool CanExecute(object parameter) => CanDo();
        public void Execute(object parameter) => DoWord();
        public void Changed() => CanExecuteChanged?.Invoke(null,EventArgs.Empty);
        

    }
}
