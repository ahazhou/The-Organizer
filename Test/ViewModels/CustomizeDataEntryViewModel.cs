using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using Test.Models;
using Test.Resources;

namespace Test.ViewModels
{
    public class CustomizeDataEntryViewModel: INotifyPropertyChanged
    {
        public CustomizeDataEntryViewModel(object viewmodel)
        {
            if(viewmodel is ObjectListViewModel)
            {
                loadObjectDetails(viewmodel as ObjectListViewModel);
            }
        }

        private ObservableCollection<ObjectDetailsInfo> objectinformation;
        public ObservableCollection<ObjectDetailsInfo> ObjectInformation
        {
            get
            {
                return objectinformation;
            }
            set
            {
                objectinformation = value;
                RaisePropertyChanged("ObjectInformation");
            }
        }

        private static uint originalMaxKey = 0;
        public void loadObjectDetails(ObjectListViewModel viewmodel)
        {
            if(viewmodel.AddObjectInfo.ObjectDetails.Count != 0)
            {
                ListObjectModel CopyModel = viewmodel.AddObjectInfo.Clone() as ListObjectModel;
                ObjectInformation = CopyModel.ObjectDetails;
            }
            else
            {
                ObjectInformation = new ObservableCollection<ObjectDetailsInfo>();
            }
         }

        public void updateObjectDetails()
        {
            Messenger.Default.Send(ObjectInformation, 1);
        }

        public void AddItem()
        {
            ObjectDetailsInfo toAdd = new ObjectDetailsInfo();
            if(ObjectInformation.Count() != 0)
            {
                if(ObjectInformation.Last().key > originalMaxKey)
                {
                    toAdd.key = ObjectInformation.Last().key + 1;
                }
                else
                {
                    toAdd.key = originalMaxKey + 1;
                }
            }
            else
            {
                toAdd.key = 0;
            }
            ObjectInformation.Add(toAdd);
        }

        public void AddItem(uint currentkey)
        {
            ObservableCollection<OptionsDataNames> o = (ObjectInformation.FirstOrDefault(x => x.key == currentkey)).OptionsEntryNames;
            OptionsDataNames toAdd = new OptionsDataNames();
            toAdd.innerKey = (o.Count() != 0) ? (o.Last().innerKey + 1) : 0;
            o.Add(toAdd);
        }


        public void RemoveDetailField(uint currentkey)
        {
            ObjectInformation.Remove(ObjectInformation.FirstOrDefault(z => z.key == currentkey));
        }

        public void RemoveDetailField(uint currentlistkey, uint currentkey)
        {
            ObservableCollection<OptionsDataNames> o = (ObjectInformation.FirstOrDefault(x => x.key == currentlistkey)).OptionsEntryNames;
            o.Remove(o.FirstOrDefault(z => z.innerKey == currentkey));
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
