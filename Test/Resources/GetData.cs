using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Test.Models;

namespace Test.Resources
{
    public class GetData
    {
        private static List<ListObjectModel> ListObjectModel;

        public List<ListObjectModel> GetList()
        {
            if(ListObjectModel == null)
            {
                InitialLoadListObjectModel();
            }
            return ListObjectModel;
        }

        private void InitialLoadListObjectModel()
        {
            ListObjectModel = new List<ListObjectModel>();
            string path = Directory.GetCurrentDirectory();
            string fileName = "../../../TextFile1.txt";
            ListObjectModel = System.IO.File.ReadAllLines(fileName)
                        .Select(r => r.Split('\t', '\n'))
                        .Select(s => new ListObjectModel()
                        {
                            Name = s.ElementAtOrDefault(0),
                        }).ToList();
            //ListObjectModel = System.IO.File.ReadAllLines(fileName)
            //            .Select(r => r.Split('\t', '\n'))
            //            .Select(s => new ListObjectModel()
            //            {
            //                Name = s.ElementAtOrDefault(0),
            //                Type = s.ElementAtOrDefault(1),
            //                IsAP = s.ElementAtOrDefault(2) == "AP",
            //                Location = s.ElementAtOrDefault(3),
            //                Cost = GetCost(s.ElementAtOrDefault(4)),
            //            }).ToList();
        }

        private int GetCost(string val)
        {
            int ret;
            if (int.TryParse(val, out ret))
                return ret;
            return 0;
        }
    }
}
