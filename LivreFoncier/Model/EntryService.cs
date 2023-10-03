using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LivreFoncier.Model
{
    public class EntryService
    {
        public EntryService()
        {
           


        }

        public static List<EntryModel> GetAll()
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                var output = cnn.Query<EntryModel>("select * from StateTbl", new DynamicParameters());
                return output.ToList();
            };
        }

        public static bool AddState(EntryModel state)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {

                cnn.Execute("INSERT INTO StateTbl (wilaya, conservation) VALUES (@wilaya, @conservation)",
                             new { state.Wilaya, state.Conservation }, commandType: CommandType.Text);
                return true;
            };
        }




        private static string LoadConnectionString(string id = "default")
        {
            return ConfigurationManager.ConnectionStrings[id].ConnectionString;
        }
    }
}
