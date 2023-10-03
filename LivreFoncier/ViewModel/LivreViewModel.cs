using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LivreFoncier.Model;
using LivreFoncier.Commands;
using System.Runtime.CompilerServices;
using System.Windows.Controls;
using System.ComponentModel.DataAnnotations;
using System.Windows;

namespace LivreFoncier.ViewModel
{
    public class LivreViewModel : INotifyPropertyChanged, IEditableObject
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        LivreService livreService;
        public LivreViewModel()
        {
            livreService = new LivreService();
            loadDataAsync = new RelayCommand(async () => await LoadLivre(), CanLoadLivre);
            currentLivre = new LivreModel();
            saveCommand = new RelayCommand(Save,CanSave);
            updateCommand = new RelayCommand(Update,CanUpdate);
            headerText = "القائمة";
            //UpdateToDuplicate();


        }

        private bool CanLoadLivre()
        {
            return true;
        }

        
        public async Task <ObservableCollection<LivreModel>> LoadLivre()
        {
            try
            {
                await Task.Delay(500);
                livreList= await Task.Run(() => new ObservableCollection<LivreModel>(LivreService.GetAll()));
                
            }
            catch
            {

            }
            return livreList;
        }

        //private void UpdateToDuplicate()
        //{
        //    livreList = new ObservableCollection<LivreModel>(LivreService.GetAll());
        //    foreach (LivreModel item in LivreList)
        //    {
        //        var search = LivreService.OriginalToDuplicate(item);
        //        if (search!=null)
        //        {
        //            search.Doubling = true;
        //            LivreService.UpdateLivre(search);
        //        }
        //    }
        //}

        private  ObservableCollection<LivreModel> livreList;

        public  ObservableCollection<LivreModel> LivreList
        {
            get { return livreList; }
            set { livreList = value; OnPropertyChanged("LivreList"); }
        }


        private bool isDialogOpen;

        public bool IsDialogOpen
        {
            get { return isDialogOpen; }
            set { isDialogOpen = value; OnPropertyChanged("IsDialogOpen"); }
        }

        private LivreModel currentLivre;
        public LivreModel CurrentLivre
        {
            get { return currentLivre; }
            set { currentLivre = value; OnPropertyChanged("CurrentLivre"); }
        }


        private LivreModel originalToDuplicate;

        public LivreModel OriginalToDuplicate
        {
            get { return originalToDuplicate; }
            set { originalToDuplicate = value; OnPropertyChanged("OriginalToDuplicate"); }
        }



        private String headerText;

        public String HeaderText
        {
            get { return headerText; }
            set { headerText = "القائمة "; }
        }


        private String message;

        public String Message
        {
            get { return message; }
            set { message = value; OnPropertyChanged("Message"); }
        }

        private RelayCommand loadDataAsync;

        public RelayCommand LoadDataAsync
        {
            get { return loadDataAsync; }
            set { loadDataAsync = value; }
        }


        private RelayCommand saveCommand;

        public RelayCommand SaveCommand
        {
            get { return saveCommand; }
        }

        public  void Save()
        {
            
            try
            {
                if(CurrentLivre.Doubling==false)
                {
                    if (CurrentLivre.RepeateOrCopy==false)
                    {
                        var search = LivreService.SearchLivreWithLot(CurrentLivre);
                        if (search == true)
                        {
                            

                            Message = "هذا الدفتر موجود مسبقا، إذا كان مزدوج التسليم علّم على خيار 'مزدوج التسليم' ليتم مراجعته مستقبلا، أو علّم على نسخة إذا كان هذا الدفتر نسخة";
                            HideMessage();
                        }
                        else
                        {
                            var IsSaved = LivreService.AddLivre(CurrentLivre);
                            if (IsSaved)
                            {
                                Message = "تم الحفظ";
                                CurrentLivre.Town = CurrentLivre.DeliveryDate=CurrentLivre.DeliveredTo=CurrentLivre.Note="";
                                CurrentLivre.Section = CurrentLivre.Ilot = CurrentLivre.Lot =
                                    CurrentLivre.RecordNum = CurrentLivre.ArrangeNum = 0;
                                CurrentLivre.RepeateOrCopy = CurrentLivre.Doubling = false;
                                HideMessage();
                            }
                
                            else
                            {
                                Message = "فشل الحفظ";
                                HideMessage();
                            }

                        }

                    }
                    else
                    {
                        var IsSaved = LivreService.AddLivre(CurrentLivre);
                        if (IsSaved)
                        {
                            Message = "تم الحفظ";
                            CurrentLivre.Town = CurrentLivre.DeliveryDate = CurrentLivre.DeliveredTo = CurrentLivre.Note = "";
                            CurrentLivre.Section = CurrentLivre.Ilot = CurrentLivre.Lot =
                                CurrentLivre.RecordNum = CurrentLivre.ArrangeNum = 0;
                            CurrentLivre.RepeateOrCopy = CurrentLivre.Doubling = false;
                            HideMessage();
                        }

                        else
                        {
                            Message = "فشل الحفظ";
                            HideMessage();
                        }
                    }

                }
                else
                {
                    var IsSaved = LivreService.AddLivre(CurrentLivre);
                    if (IsSaved)
                    {
                        OriginalToDuplicate = LivreService.OriginalToDuplicate(CurrentLivre);
                        if (OriginalToDuplicate!=null)
                        {
                            OriginalToDuplicate.Doubling = true;
                            LivreService.UpdateLivre(originalToDuplicate);

                        }
                        Message = "تم الحفظ";
                        CurrentLivre.Town = CurrentLivre.DeliveryDate = CurrentLivre.DeliveredTo = CurrentLivre.Note = "";
                        CurrentLivre.Section = CurrentLivre.Ilot = CurrentLivre.Lot =
                            CurrentLivre.RecordNum = CurrentLivre.ArrangeNum = 0;
                        CurrentLivre.RepeateOrCopy = CurrentLivre.Doubling = false;

                        HideMessage();
                    }

                    else
                    {
                        Message = "فشل الحفظ";
                        HideMessage();
                    }
                }
            }
            catch (Exception ex)
            {

                Message = ex.Message;
            }
            
            

        }

        public bool CanSave() => Validator.TryValidateObject(currentLivre, new ValidationContext(currentLivre,null,null),null, true); //CurrentLivre != null && CurrentLivre.IsValid();
        //!String.IsNullOrEmpty(CurrentLivre.Town); //&& !String.IsNullOrEmpty(CurrentLivre.Section.ToString()) && !String.IsNullOrEmpty(CurrentLivre.Ilot.ToString()) && !String.IsNullOrEmpty(CurrentLivre.Lot.ToString()) && !String.IsNullOrEmpty(CurrentLivre.Doubling.ToString()) && !String.IsNullOrEmpty(CurrentLivre.DeliveryDate)  && !String.IsNullOrEmpty(CurrentLivre.RecordNum.ToString()) && !String.IsNullOrEmpty(CurrentLivre.ArrangeNum.ToString()) && !String.IsNullOrEmpty(CurrentLivre.DeliveredTo);

        private RelayCommand updateCommand;

        public RelayCommand UpdateCommand
        {
            get { return updateCommand; }
        }

        
        public void Update()
        {
            try
            {
                
                if (CurrentLivre.Doubling==false)
                {
                    if (CurrentLivre.RepeateOrCopy==false)
                    {
                        var search = LivreService.MoreThanOneToEdit(CurrentLivre);
                        if (search==true)
                        {
                            Message = "هذا الدفتر موجود مسبقا، إذا كان مزدوج التسليم انسخ معلومات 'الجزء' في خانة 'مزدوج التسليم' ليتم مراجعته مستقبلا";

                            HideMessage();
                        }
                        else
                        {
                            if (CurrentLivre != null)
                            {
                                var IsUpdated = LivreService.UpdateLivre(CurrentLivre);
                                if (IsUpdated)
                                {
                                    //Message = "تم التعديل";
                                    IsDialogOpen = false;

                                }

                                else
                                {
                                    Message = "فشل التعديل";
                                    HideMessage();
                                }

                                

                            }

                        }

                    }
                    else
                    {
                        if (CurrentLivre != null)
                        {
                            var IsUpdated = LivreService.UpdateLivre(CurrentLivre);
                            if (IsUpdated)
                            {
                                //Message = "تم التعديل";
                                IsDialogOpen = false;

                            }
                            else
                            {
                                Message = "فشل التعديل";
                                HideMessage();
                            }
                        }
                    }

                }
                else
                {
                    if (CurrentLivre != null)
                    {
                        var IsUpdated = LivreService.UpdateLivre(CurrentLivre);
                        if (IsUpdated)
                        {
                            OriginalToDuplicate = LivreService.OriginalToDuplicate(CurrentLivre);
                            OriginalToDuplicate.Doubling = true;
                            LivreService.UpdateLivre(originalToDuplicate);

                            //Message = "تم التعديل";
                            IsDialogOpen = false;

                        }
                        else
                        {
                            Message = "فشل التعديل";
                            HideMessage();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }




        }

        public bool CanUpdate() => CurrentLivre != null? Validator.TryValidateObject(currentLivre, new ValidationContext(currentLivre, null, null), null, true):true;
        //!String.IsNullOrEmpty(CurrentLivre.Town) && !String.IsNullOrEmpty(CurrentLivre.Section.ToString()) && !String.IsNullOrEmpty(CurrentLivre.Ilot.ToString()) && !String.IsNullOrEmpty(CurrentLivre.Lot.ToString()) && !String.IsNullOrEmpty(CurrentLivre.Doubling.ToString()) && !String.IsNullOrEmpty(CurrentLivre.DeliveryDate) && !String.IsNullOrEmpty(CurrentLivre.RecordNum.ToString()) && !String.IsNullOrEmpty(CurrentLivre.ArrangeNum.ToString()) && !String.IsNullOrEmpty(CurrentLivre.DeliveredTo);



       


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

        public void BeginEdit()
        {
            throw new NotImplementedException();
        }

        public void EndEdit()
        {
            throw new NotImplementedException();
        }

        public void CancelEdit()
        {
            throw new NotImplementedException();
        }
    }
}
