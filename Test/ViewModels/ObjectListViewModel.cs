using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using Test.Models;
using Test.Resources;

namespace Test.ViewModels
{
    public class ObjectListViewModel: INotifyPropertyChanged
    {

        private GetData testdata;
        public ObjectListViewModel()
        {
            testdata = new GetData();
            LoadData();
            Messenger.Default.Register<ObservableCollection<ObjectDetailsInfo>>(this, ChangeCollection, 1);
            Messenger.Default.Register<ObservableCollection<ListObjectModel>>(this, AlterModel, 2);
        }

        private void AlterModel(ObservableCollection<ListObjectModel> obj)
        {
            TestCollection.Clear();
            foreach(var a in obj)
            {
                TestCollection.Add(a.Clone() as ListObjectModel);
            }
        }

        private void ChangeCollection(ObservableCollection<ObjectDetailsInfo> obj)
        {
            foreach(var listObject in TestCollection)
            {
                AddObjectInfo.ObjectDetails.Clear();
                listObject.ObjectDetails.Clear();
                foreach (var ob in obj)
                {
                    AddObjectInfo.ObjectDetails.Add(ob.Clone() as ObjectDetailsInfo);
                    listObject.ObjectDetails.Add(ob.Clone() as ObjectDetailsInfo);
                }
            }
        }

        private void LoadData()
        {
            testcollection = testdata.GetList().MakeObservableCollection();
        }

        private ListObjectModel addobjectinfo;
        public ListObjectModel AddObjectInfo
        {
            get
            {
                if(addobjectinfo == null)
                {
                    addobjectinfo = new ListObjectModel();
                }
                return addobjectinfo;
            }
            set
            {
                addobjectinfo = value;
                RaisePropertyChanged("AddObjectInfo");
            }
        }

        #region Prospectively Remove
        public void AddObject()
        {
            if(addobjectinfo != null)
                AddData(addobjectinfo);
        }
        
        private void AddData(ListObjectModel model)
        {
            if(testcollection == null)
            {
                testcollection = new ObservableCollection<ListObjectModel>();
            }
            testcollection.Add(model);
            RaisePropertyChanged("TestCollection");
        }
        #endregion

        private ObservableCollection<ListObjectModel> testcollection;
        public ObservableCollection<ListObjectModel> TestCollection
        {
            get
            {
                return testcollection;
            }
            set
            {
                testcollection = value;
                RaisePropertyChanged("TestCollection");
            }
        }

        #region Property Changed
        public event PropertyChangedEventHandler PropertyChanged;
        public void RaisePropertyChanged(string propertyName)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        #endregion
    }
}
