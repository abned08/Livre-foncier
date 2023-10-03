using LivreFoncier.ViewModel;
using Syncfusion.UI.Xaml.Grid;
using Syncfusion.UI.Xaml.Grid.Converter;
using Syncfusion.XlsIO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using Microsoft.Win32;
using System.IO;
using System;

namespace LivreFoncier.View
{
    public partial class LivreView : UserControl
    {
        public LivreView()
        {
           // System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("ar");

            InitializeComponent();

            sfdataGrid.Loaded += SfdataGrid_Loaded;
            sfdataGrid.ItemsSourceChanged += SfdataGrid_ItemsSourceChanged;
        }


        async void SfdataGrid_Loaded(object sender, RoutedEventArgs e)
        {
            this.sfdataGrid.ItemsSource = await (this.DataContext as LivreViewModel).LoadLivre();
        }

        void SfdataGrid_ItemsSourceChanged(object sender, GridItemsSourceChangedEventArgs e)
        {
            sfBusyIndicator.IsBusy = false;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //var options = new ExcelExportingOptions();
            //options.ExportUnBoundRows = true;
            //var excelEngine = sfdataGrid.ExportToExcel(sfdataGrid.View, options);
            //var workBook = excelEngine.Excel.Workbooks[0];
            //workBook.SaveAs("livres.xlsx");
            try
            {
                ExcelEngine excelEngine = sfdataGrid.ExportCollectionToExcel(sfdataGrid.View, ExcelVersion.Excel2007,null,null, true);
                IWorkbook workBook = excelEngine.Excel.Workbooks[0];
                SaveFileDialog sfd = new SaveFileDialog
                {
                    FilterIndex = 1,
                    Filter = "Excel 2007 to 2010 Files(*.xlsx)|*.xlsx|Excel 97 to 2003 Files(*.xls)|*.xls"
                };

                if (sfd.ShowDialog() == true)
                {
                    using (Stream stream = sfd.OpenFile())
                    {
                        if (sfd.FilterIndex == 1)
                            workBook.Version = ExcelVersion.Excel2010;
                        else
                            workBook.Version = ExcelVersion.Excel97to2003;
                        workBook.SaveAs(stream);
                    }

                    //Message box confirmation to view the created spreadsheet.
                    if (MessageBox.Show("هل تريد مشاهدة ملف الإكسل؟", "تم إنشاء قائمة إكسل",
                                        MessageBoxButton.YesNo, MessageBoxImage.Information) == MessageBoxResult.Yes)
                    {
                        //Launching the Excel file using the default Application.[MS Excel Or Free ExcelViewer]
                        Open(sfd.FileName);
                    }
                }
            }
            catch (Exception)
            {

            }
        }

        private static void Open(string fileName)
        {
            System.Diagnostics.Process.Start(fileName);
        }
    }

}
