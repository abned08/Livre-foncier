using LivreFoncier.Commands;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SQLite;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LivreFoncier.ViewModel
{
    public class DbViewModel: INotifyPropertyChanged


    {

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName = "") => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


        public static RelayCommand OpenCommand { get; set; }
        public static RelayCommand OpenFolderCommand { get; set; }
        private string _selectedPath;
        public string SelectedPath
        {
            get { return _selectedPath; }
            set
            {
                _selectedPath = value;
                OnPropertyChanged("SelectedPath");
            }
        }

        private string message;

        public string Message
        {
            get { return message; }
            set { message = value; OnPropertyChanged("Message"); }
        }


        private string _defaultPath;

        public DbViewModel()
        {
            RegisterCommands();
        }

        public DbViewModel(string defaultPath)
        {
            _defaultPath = defaultPath;
            RegisterCommands();
        }

        private void RegisterCommands()
        {
            OpenCommand = new RelayCommand(ExecuteOpenFileDialog, CanExecuteOpenFileDialog);
            OpenFolderCommand = new RelayCommand(ExecuteOpenFolder, CanExecuteOpenFolder);
        }

        private bool CanExecuteOpenFolder()
        {
            return true;
        }

        private void ExecuteOpenFolder()
        {
            FolderBrowserDialog openFolderDialog = new FolderBrowserDialog();
            if (openFolderDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK/* && OpenFolderCommand.CanExecute(openFolderDialog.SelectedPath*/)
            {
                //OpenFolderCommand.Execute(openFolderDialog.SelectedPath);
                SelectedPath = openFolderDialog.SelectedPath;
                string selectedDate = DateTime.Now.Year.ToString() +"-"+ DateTime.Now.Month.ToString() + "-" + DateTime.Now.Day.ToString() + " " + DateTime.Now.Hour.ToString() + "_" + DateTime.Now.Minute.ToString();
                using (var location = new SQLiteConnection(@"Data Source=./lf.db;version=3;Password=abned7;"))
                using (var destination = new SQLiteConnection(string.Format(@"Data Source={0}/backupLivreDb "+ selectedDate + ".db;version=3;Password=abned7;", SelectedPath)))
                {
                    location.Open();
                    destination.Open();
                    location.BackupDatabase(destination, "main", "main", -1, null, 0);
                    
                    Message="تم حفظ النسخة";
                    HideMessage();
                }
            }
        }

        private bool CanExecuteOpenFileDialog()
        {
            return true;
        }

        private void ExecuteOpenFileDialog()
        {
            var dialog = new OpenFileDialog { InitialDirectory = _defaultPath };
            //dialog.ShowDialog();

            

            if (dialog.ShowDialog()==DialogResult.OK)
            {
                SelectedPath = dialog.FileName;
                Restore(SelectedPath);
                Message="تم الاسترجاع";
                HideMessage();
            }
        }

        private static readonly string filePath = Environment.CurrentDirectory;

        static void Restore(string bkfilename)
        {
            var filename = "lf.db";
            var bkupFilename = bkfilename;

            CreateDB(filePath, filename);

            //BackupDB(filePath, filename, bkupFilename);
            RestoreDB(filePath, bkupFilename, filename, true);
        }

        private static void RestoreDB(string filePath, string srcFilename, string destFileName, bool IsCopy = false)
        {
            var srcfile = Path.Combine(filePath, srcFilename);
            var destfile = Path.Combine(filePath, destFileName);

            if (File.Exists(destfile)) File.Delete(destfile);

            if (IsCopy)
                BackupDB(filePath, srcFilename, destFileName);
            else
                File.Move(srcfile, destfile);
        }

        private static void BackupDB(string filePath, string srcFilename, string destFileName)
        {
            var srcfile = Path.Combine(filePath, srcFilename);
            var destfile = Path.Combine(filePath, destFileName);

            if (File.Exists(destfile)) File.Delete(destfile);

            File.Copy(srcfile, destfile);
        }

        private static void CreateDB(string filePath, string filename)
        {
            var fullfile = Path.Combine(filePath, filename);
            if (File.Exists(fullfile)) File.Delete(fullfile);

            //File.WriteAllText(fullfile, "this is the dummy data");
        }




        private System.Windows.Threading.DispatcherTimer popupTimer;

        // Whatever is going to start the timer - I've used a click event
        private void HideMessage()
        {
            popupTimer = new System.Windows.Threading.DispatcherTimer();

            // Work out interval as time you want to popup - current time
            popupTimer.Interval = new TimeSpan(0, 0, 2);
            popupTimer.IsEnabled = true;
            popupTimer.Tick += new EventHandler(popupTimer_Tick);
        }

        void popupTimer_Tick(object sender, EventArgs e)
        {
            popupTimer.IsEnabled = false;
            Message = "";
        }

    }
}
