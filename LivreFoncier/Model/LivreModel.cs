using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LivreFoncier.Model
{

    public class LivreModel : INotifyPropertyChanged,IDataErrorInfo

    {
        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string propertyName)=> PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; OnPropertyChanged("Id"); }
        }

        private string town;
        [Required(ErrorMessage = "حقل ضروري")]
        [RegularExpression(@"^([^0-9]*)$",ErrorMessage ="غير مسموح بالأرقام")]
        [StringLength(80, MinimumLength = 3, ErrorMessage = "لا يمكن أن يكون أقل من 3 أحرف")]

        public string Town
        {
            get { return town; }
            set
            { town = value; OnPropertyChanged("Town"); }
        }


        private int section;
        //[RegularExpression(@"^[1-9]\d*$", ErrorMessage ="رقم فقط")]
        [Range(1, int.MaxValue, ErrorMessage = "رقم أكبر من 0")]
        public int Section
        {
            get { return section; }
            set { section = value; OnPropertyChanged("Section"); }
        }

        private int ilot;
        [Range(1, int.MaxValue, ErrorMessage = "رقم أكبر من 0")]
        public int Ilot
        {
            get { return ilot; }
            set { ilot = value; OnPropertyChanged("Ilot"); }
        }

        private int lot;
        [Range(0, int.MaxValue, ErrorMessage = "رقم فقط")]
        public int Lot
        {
            get { return lot; }
            set { lot = value; OnPropertyChanged("Lot"); }
        }

        private bool doubling;
        public bool Doubling
        {
            get { return doubling; }
            set { doubling = value; OnPropertyChanged("Doubling"); }
        }

        private string deliveryDate;
        [Required(ErrorMessage = "حقل ضروري")]
        public string DeliveryDate
        {
            get { return deliveryDate; }
            set { deliveryDate = value; OnPropertyChanged("DeliveryDate"); }
        }

        private int recordNum;
        [Range(1, int.MaxValue, ErrorMessage = "رقم أكبر من 0")]
        public int RecordNum
        {
            get { return recordNum; }
            set { recordNum = value; OnPropertyChanged("RecordNum"); }
        }

        private int arrangeNum;
        [Range(1, int.MaxValue, ErrorMessage = "رقم أكبر من 0")]
        public int ArrangeNum
        {
            get { return arrangeNum; }
            set { arrangeNum = value; OnPropertyChanged("ArrangeNum"); }
        }


        private bool repeateOrCopy;
        //[RegularExpression(@"^([^0-9]*)$", ErrorMessage = "غير مسموح بالأرقام")]
        //[RegularExpression(@"\b(مكرر|نسخة)\b", ErrorMessage = "أكتب مكرر أو نسخة")]
        public bool RepeateOrCopy
        {
            get { return repeateOrCopy; }
            set { repeateOrCopy = value; OnPropertyChanged("RepeateOrCopy"); }
        }

        private string deliveredTo;
        [Required(ErrorMessage = "حقل ضروري")]
        [RegularExpression(@"^([^0-9]*)$", ErrorMessage = "غير مسموح بالأرقام")]

        public string DeliveredTo
        {
            get { return deliveredTo; }
            set { deliveredTo = value; OnPropertyChanged("DeliveredTo"); }
        }


        private string note;

        public string Note
        {
            get { return note; }
            set { note = value; OnPropertyChanged("Note"); }
        }




        public string Error => null;

        public string this[string columnName]
        {
            get
            {
                var validationResults = new List<ValidationResult>();
                if (Validator.TryValidateProperty(
                    GetType().GetProperty(columnName).GetValue(this),
                    new ValidationContext(this) { MemberName = columnName },
                    validationResults))
                {
                    return null;
                }
                else
                {
                    return validationResults.First().ErrorMessage;

                }

            }
        }


        


    }
}
