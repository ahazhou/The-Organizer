using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using Test.Models;
using Test.ViewModels;

namespace Test.Views
{
    /// <summary>
    /// Interaction logic for CustomizeDataEntryView.xaml
    /// </summary>
    public partial class CustomizeDataEntryView : UserControl
    {
        public CustomizeDataEntryView(ObjectListViewModel viewmodel)
        {
            this.DataContext = new CustomizeDataEntryViewModel(viewmodel);
            InitializeComponent();
            
        }


        #region Submitting the Object
        public static readonly RoutedEvent SaveInfoEvent = EventManager.RegisterRoutedEvent("Save_Click",
                                                                                RoutingStrategy.Bubble,
                                                                                typeof(RoutedEventHandler),
                                                                                typeof(AddObjectView));

        public event RoutedEventHandler Save_Click
        {
            add { AddHandler(SaveInfoEvent, value); }
            remove { RemoveHandler(SaveInfoEvent, value); }
        }

        private void SaveInfo_Click(object sender, RoutedEventArgs e)
        {
            ViewModel.updateObjectDetails();
            RaiseEvent(new RoutedEventArgs(SaveInfoEvent, this));
        }
        #endregion

        private void AddItem_Click(object sender, RoutedEventArgs e)
        {
            ViewModel.AddItem();
        }

        private void AddField_Click(object sender, RoutedEventArgs e)
        {
            uint currentkey = (uint)((sender as Button).Tag);
            ViewModel.AddItem(currentkey);
        }

        private void RemoveField_Click(object sender, RoutedEventArgs e)
        {
            uint currentkey = (uint)((sender as Button).Tag);
            ViewModel.RemoveDetailField(currentkey);
        }

        private void RemoveDataField_Click(object sender, RoutedEventArgs e)
        {
            //may cause issues with slowing the program (space vs time)
            uint currentlistkey = (uint)((sender as Button).Tag);
            uint currentitem = (uint)((sender as Button).FindName("CurrentItem") as TextBox).Tag;
            ViewModel.RemoveDetailField(currentlistkey, currentitem);
        }

        private CustomizeDataEntryViewModel ViewModel
        {
            get
            {
                return this.DataContext as CustomizeDataEntryViewModel;
            }
        }
    }
}
