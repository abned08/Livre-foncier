using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LivreFoncier.Model
{
    public class EntryModel:INotifyPropertyChanged, IDataErrorInfo
    {


        private string wilaya;
        [Required(ErrorMessage = "حقل ضروري")]
        public string Wilaya
        {
            get { return wilaya; }
            set { wilaya = value; OnPropertyChanged(); }
        }

        private string conservation;
        [Required(ErrorMessage = "حقل ضروري")]
        public string Conservation
        {
            get { return conservation; }
            set { conservation = value; OnPropertyChanged(); }
        }





        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName = "") => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));


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
