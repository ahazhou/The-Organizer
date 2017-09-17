using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Test.Models;
using Test.Resources;

namespace Test.ViewModels
{
    public class AddObjectViewModel
    {
        public AddObjectViewModel(ObjectListViewModel viewmodel)
        {
            ListModel = viewmodel.AddObjectInfo.Clone() as ListObjectModel;
            Collection = new ObservableCollection<ListObjectModel>();
            foreach(var o in viewmodel.TestCollection)
            {
                //collection is empty need to fix it
                Collection.Add(o.Clone() as ListObjectModel);
            }
        }

        private ListObjectModel ListModel;
        public void AddNewObject()
        {
            Collection.Add(new ListObjectModel(ListModel));
        }

        public void RemoveExistingObject(string currentitem)
        {
            Collection.Remove(Collection.FirstOrDefault(x => x.Name == currentitem));
        }

        public void SubmitObject()
        {
            Messenger.Default.Send(Collection, 2);
        }

        private ObservableCollection<ListObjectModel> collection;
        public ObservableCollection<ListObjectModel> Collection
        {
            get
            {
                return collection;
            }
            set
            {
                collection = value;
            }
        }
    }
}
