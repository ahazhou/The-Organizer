using System;
using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using Test.Models;
using Test.ViewModels;

namespace Test.Views
{
    /// <summary>
    /// Interaction logic for AddObjectView.xaml
    /// </summary>
    public partial class AddObjectView : UserControl
    {
        public AddObjectView(ObjectListViewModel viewmodel)
        {
            this.DataContext = new AddObjectViewModel(viewmodel);
            InitializeComponent();
        }



        #region Submitting the Object
        public static readonly RoutedEvent SubmitObjectEvent = EventManager.RegisterRoutedEvent("Submit_Click",
                                                                                RoutingStrategy.Bubble,
                                                                                typeof(RoutedEventHandler),
                                                                                typeof(AddObjectView));

        public event RoutedEventHandler Submit_Click
        {
            add { AddHandler(SubmitObjectEvent, value); }
            remove { RemoveHandler(SubmitObjectEvent, value); }
        }

        private void SubmitObject_Click(object sender, RoutedEventArgs e)
        {
            ViewModel.SubmitObject();
            RaiseEvent(new RoutedEventArgs(SubmitObjectEvent, this));
        }
        #endregion

        #region Cancel the Addition
        public static readonly RoutedEvent CancelEvent = EventManager.RegisterRoutedEvent("Cancel_Click",
                                                                                RoutingStrategy.Bubble,
                                                                                typeof(RoutedEventHandler),
                                                                                typeof(AddObjectView));

        public event RoutedEventHandler Cancel_Click
        {
            add { AddHandler(CancelEvent, value); }
            remove { RemoveHandler(CancelEvent, value); }
        }
        private void CancelObject_Click(object sender, RoutedEventArgs e)
        {
            RaiseEvent(new RoutedEventArgs(CancelEvent, this));
        }
        #endregion

        private void AddObject_Click(object sender, RoutedEventArgs e)
        {
            ViewModel.AddNewObject();
        }

        private void RemoveField_Click(object sender, RoutedEventArgs e)
        {
            string currentitem = (sender as Button).Tag as string;
            ViewModel.RemoveExistingObject(currentitem);
        }

        private AddObjectViewModel ViewModel
        {
            get
            {
                return this.DataContext as AddObjectViewModel;
            }
        }
    }
}
