using System;
using System.Collections.Generic;
using System.Globalization;
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
using System.Windows.Shapes;
using Test.Models;
using Test.ViewModels;

namespace Test.Views
{
    public class ForDummyConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value;
        }
    }
    /// <summary>
    /// Interaction logic for ObjectListView.xaml
    /// </summary>
    public partial class ObjectListView : Window
    {
        public ObjectListView()
        {
            InitializeComponent();
        }

        private void AddObject_Click(object sender, RoutedEventArgs e)
        {
            ObjectListViewModel ViewModel = DataContext as ObjectListViewModel;
            if(ViewModel != null)
            {
                Window window = new Window();
                AddObjectView addView = new AddObjectView(ViewModel);
                window.Content = addView;
                window.Height = window.Width = 300;
                #region Add Object
                addView.Submit_Click += (s, _e) =>
                {
                    window.Close();
                };
                #endregion
                #region Cancel Click
                addView.Cancel_Click += (s, _e) =>
                {
                    window.Close();
                };
                #endregion
                window.ShowDialog();
            }
        }

        private void CustomizeDataEntry_Click(object sender, RoutedEventArgs e)
        {
            ObjectListViewModel ViewModel = DataContext as ObjectListViewModel;
            if(ViewModel != null)
            {
                Window window = new Window();
                CustomizeDataEntryView addView = new CustomizeDataEntryView(ViewModel);
                #region Save Object
                addView.Save_Click += (s, _e) =>
                {
                    window.Close();
                };
                #endregion
                window.Content = addView;
                window.Height = window.Width = 300;
                window.ShowDialog();
            }
        }
    }
}
