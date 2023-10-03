using LivreFoncier.ViewModel;
using Syncfusion.UI.Xaml.TextInputLayout;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LivreFoncier.View
{
    /// <summary>
    /// Interaction logic for AddPage.xaml
    /// </summary>
    public partial class AddPage : UserControl
    {
        public AddPage()
        {
            InitializeComponent();
        }


        async private void txtTown_TextChanged(object sender, TextChangedEventArgs e)
        {
            this.txtTown.AutoCompleteSource = await (this.DataContext as LivreViewModel).LoadLivre();
        }
    }
}
