using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LivreFoncier.ViewModel
{
    public class AddPageViewModel
    {
        public AddPageViewModel()
        {
            headerText = "إضــافة";
        }


        private String headerText;

        public String HeaderText
        {
            get { return headerText; }
            set { headerText = "إضــافة"; }
        }
    }
}
