using LivreFoncier.Commands;
using LivreFoncier.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SQLite;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace LivreFoncier.ViewModel
{
    public class EntryViewModel: INotifyPropertyChanged
    {

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName = "") => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));



        public EntryViewModel()
        {
            //SQLiteConnection conn = new SQLiteConnection(LoadConnectionString());
            //conn.Open();
            //conn.ChangePassword("abned7");
            //MessageBox.Show("changed");

            saveState = new RelayCommand(Save, CanSave);
            currentEntry = new EntryModel();
            headerText = "الرئيسيـــة";

            ShowDialogCommand = new RelayCommand(OnShowDialog,CanOnShowDialog);
            LastEntry = GetLAll().LastOrDefault();


        }


        //private static string LoadConnectionString(string id = "default")
        //{
        //    return ConfigurationManager.ConnectionStrings[id].ConnectionString;
        //}

        private bool CanOnShowDialog()
        {
            return true;
        }

        private bool CanSave() => Validator.TryValidateObject(CurrentEntry, new ValidationContext(CurrentEntry, null, null), null, true);

        private void Save()
        {
            try
            {
                var IsSaved = EntryService.AddState(CurrentEntry);
                if (IsSaved)
                {
                    LastEntry = GetLAll().LastOrDefault();
                    CurrentEntry.Wilaya = "";
                    CurrentEntry.Conservation = "";
                    Message = "تم الحفظ";
                    IsDialogOpen = false;

                }

                else
                {
                    Message = "فشل الحفظ";
                }

            }
            catch (Exception )
            {

                throw;
            }
        }

        private EntryModel currentEntry;

        public EntryModel CurrentEntry
        {
            get { return currentEntry; }
            set { currentEntry = value; OnPropertyChanged("CurrentEntry"); }
        }

        private EntryModel lastEntry;

        public EntryModel LastEntry
        {
            get { return lastEntry; }
            set { lastEntry = value; OnPropertyChanged("LastEntry"); }
        }


        private ObservableCollection<EntryModel> listEntry;

        public ObservableCollection<EntryModel> ListEntry
        {
            get { return listEntry; }
            set { listEntry = value; OnPropertyChanged("ListEntry"); }
        }


        private RelayCommand saveState;

        public RelayCommand SaveState
        {
            get { return saveState; }
            set { saveState = value; }
        }

        private string message;

        public string Message
        {
            get { return message; }
            set { message = value; }
        }


        private String headerText;

        public String HeaderText
        {
            get { return headerText; }
            set { headerText = "الرئيسية"; }
        }


        public ObservableCollection<EntryModel> GetLAll()
        {
            ListEntry = new ObservableCollection<EntryModel>(EntryService.GetAll());
            return ListEntry;
        }

        private bool isDialogOpen;

        public bool IsDialogOpen
        {
            get { return isDialogOpen; }
            set { isDialogOpen = value; OnPropertyChanged(); }
        }

        public ICommand ShowDialogCommand { get; }


        public bool StateIsEmpty()
        {
            ListEntry = new ObservableCollection<EntryModel>(EntryService.GetAll());
            if (ListEntry.Count < 1)
                return true;
            else
                return false;
        }


        private void OnShowDialog()
        {
            ListEntry = new ObservableCollection<EntryModel>(EntryService.GetAll());
            if (ListEntry.Count <1)
                IsDialogOpen = true;
            else
            {
                IsDialogOpen = false;
                
            }
        }



    }

}
