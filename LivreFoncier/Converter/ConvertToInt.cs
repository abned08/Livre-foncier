using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace LivreFoncier.Converter
{

    public class ConvertToInt : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value == null || (int)value == default(int))
                return "";
                //return string.IsNullOrEmpty(value as string) ? "" : value;

            return value.ToString();
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (String.IsNullOrEmpty(value as string) || !IsDigitsOnly(value.ToString()))
                return default(int);
            //return System.Convert.ToDecimal(value = string.IsNullOrEmpty(value as string) ? "0" : value);

            return int.Parse(value.ToString());
        }

        bool IsDigitsOnly(string str)
        {
            foreach (char c in str)
            {
                if (c < '0' || c > '9')
                    return false;
            }

            return true;
        }
    }
}
