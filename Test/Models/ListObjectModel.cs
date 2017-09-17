using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test.Models
{
    public enum entryTypes { TextBox, ComboBox, RadioButton }
    public class OptionsDataNames: INotifyPropertyChanged, ICloneable
    {
        public OptionsDataNames(string temp = "")
        {
            dataname = temp;
        }

        private string dataname;
        public string DataName
        {
            get
            {
                return dataname;
            }
            set
            {
                dataname = value;
                RaisePropertyChanged("DataName");
            }
        }

        public uint innerKey
        {
            get;
            set;
        }

        public override string ToString()
        {
            return dataname;
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
        #region Clone
        public object Clone()
        {
            return new OptionsDataNames
            {
                dataname = this.dataname
            };
        }
        #endregion
    }
    public class ObjectDetailsInfo: INotifyPropertyChanged, ICloneable
    {
        public string ObjectDetailName
        {
            get;
            set;
        }

        private entryTypes optionsentrymethod;
        public entryTypes OptionsEntryMethod
        {
            get
            {
                return optionsentrymethod;
            }
            set
            {
                optionsentrymethod = value;
                RaisePropertyChanged("OptionsEntryMethod");
            }
        }

        private ObservableCollection<OptionsDataNames> optionsentrynames;
        public ObservableCollection<OptionsDataNames> OptionsEntryNames
        {
            get
            {
                if(optionsentrynames == null)
                {
                    optionsentrynames = new ObservableCollection<OptionsDataNames>();
                }
                return optionsentrynames;
            }
            set
            {
                optionsentrynames = value;
                RaisePropertyChanged("OptionsEntryNames");
            }
        }

        public string Choice
        {
            get;
            set;
        }

        public uint key
        {
            get;
            set;
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
        #region Clone
        public object Clone()
        {
            return new ObjectDetailsInfo
            {
                ObjectDetailName = this.ObjectDetailName,
                OptionsEntryMethod = this.OptionsEntryMethod,
                key = this.key,
                Choice = this.Choice,
                OptionsEntryNames = OptionsEntryNames.Count != 0 ? 
                    new ObservableCollection<OptionsDataNames>(OptionsEntryNames.Select(z => z.Clone()).Cast<OptionsDataNames>()) 
                    : new ObservableCollection<OptionsDataNames>()
            };
        }
        #endregion
    }

    public class ListObjectModel : INotifyPropertyChanged, ICloneable
    {
        public ListObjectModel() { }
        public ListObjectModel(ListObjectModel toAdd)
        {
            Name = toAdd.Name;
            ObjectDetails = toAdd.ObjectDetails;
            ObjectDetails = new ObservableCollection<ObjectDetailsInfo>(objectdetails.Select(x => x.Clone()).Cast<ObjectDetailsInfo>());
        }

        public string Name
        {
            get;
            set;
        }

        private ObservableCollection<ObjectDetailsInfo> objectdetails;
        public ObservableCollection<ObjectDetailsInfo> ObjectDetails
        {
            get
            {
                if(objectdetails == null)
                {
                    objectdetails = new ObservableCollection<ObjectDetailsInfo>();
                }
                return objectdetails;
            }
            set
            {
                objectdetails = value;
                RaisePropertyChanged("ObjectDetails");
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
        #region Clone
        public object Clone()
        {
            return new ListObjectModel
            {
                Name = this.Name,
                objectdetails = ObjectDetails.Count != 0 ? 
                    new ObservableCollection<ObjectDetailsInfo>(objectdetails.Select(x => x.Clone()).Cast<ObjectDetailsInfo>()) 
                    : new ObservableCollection<ObjectDetailsInfo>()
            };
        }
        #endregion
    }
}
