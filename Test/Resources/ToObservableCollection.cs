using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test.Resources
{
    public static class ToObservableCollection
    {
        public static ObservableCollection<T> MakeObservableCollection<T>(this IEnumerable<T> coll)
        {
            var oc = new ObservableCollection<T>();
            foreach(var item in coll)
            {
                oc.Add(item);
            }
            return oc;
        }
    }
}
