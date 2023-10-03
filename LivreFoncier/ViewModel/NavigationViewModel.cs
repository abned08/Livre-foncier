using LivreFoncier.Commands;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace LivreFoncier.ViewModel
{
    class NavigationViewModel : INotifyPropertyChanged
    {

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string propName)

        {


            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propName));

        }

        public RelayCommand LivrePageCommand { get; set; }

        public RelayCommand AddPageCommand { get; set; }

        public RelayCommand EntryPageCommand { get; set; }

        public RelayCommand BackupCommand { get; set; }


        private object selectedViewModel;

        public object SelectedViewModel

        {

            get { return selectedViewModel; }

            set { selectedViewModel = value; OnPropertyChanged("SelectedViewModel"); }

        }



        public NavigationViewModel()

        {

            LivrePageCommand = new RelayCommand(LivrePage,CanLivrePage);

            AddPageCommand = new RelayCommand(AddPage,CanAddEditPage);

            EntryPageCommand = new RelayCommand(EntryPage, CanEntryPage);

            BackupCommand = new RelayCommand(Backup, CanBackup);

        }

        private bool CanBackup()
        {
            return true;
        }


        private string _path;
        public string path { get => _path; set { _path = value; OnPropertyChanged("path"); } }

        private void Backup()
        {
            SelectedViewModel = new DbViewModel();
        }

        private bool CanEntryPage()
        {
            return true;
        }

        private void EntryPage()
        {
            SelectedViewModel = new EntryViewModel();
        }

        private bool CanAddEditPage()
        {
            return true;
        }

        private bool CanLivrePage()
        {
            return true;
        }

        private void LivrePage()

        {

            SelectedViewModel = new LivreViewModel();
            
            

        }

        private void AddPage()

        {

            SelectedViewModel = new AddPageViewModel();

        }

        



        





    
    }
}
