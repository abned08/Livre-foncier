using Dapper;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.Data;
using System.Data.SQLite;
using System.Linq;

namespace LivreFoncier.Model
{
    public class LivreService
    {
        public LivreService()
        {
          
        }

        public  static List<LivreModel> GetAll()
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                

                var output = cnn.Query<LivreModel>("select * from LivreTbl", new DynamicParameters());
                return output.ToList();
            };
        }

        public static bool MoreThanOneToEdit(LivreModel livre)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                bool isFounded = false;

                var searched = cnn.Query<LivreModel>("select * from livreTbl where town=@town and section=@section and ilot=@ilot and lot=@lot", new { livre.Town, livre.Section, livre.Ilot, livre.Lot });
                if (searched.ToList().Count > 1)
                    isFounded = true;
                else
                    isFounded = false;


                return isFounded;
            };
            
        }

        public static LivreModel OriginalToDuplicate(LivreModel livre)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                

                var searched = cnn.Query<LivreModel>("select * from livreTbl where town=@town and section=@section and ilot=@ilot and lot=@lot", new { livre.Town, livre.Section, livre.Ilot, livre.Lot });
                if (searched.ToList().Count > 1)
                   return searched.FirstOrDefault();
                else
                    return null;


                
            };

        }


        public static bool AddLivre(LivreModel livre)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {

                cnn.Execute("INSERT INTO LivreTbl (town, section, ilot, lot, doubling, deliveryDate,recordNum,arrangeNum,repeateOrCopy,deliveredTo,note) VALUES (@town, @section, @ilot, @lot, @doubling, @deliveryDate,@recordNum,@arrangeNum,@repeateOrCopy,@deliveredTo,@note)", 
                                                new { livre.Town,livre.Section,livre.Ilot,livre.Lot,livre.Doubling,livre.DeliveryDate,livre.RecordNum,livre.ArrangeNum,livre.RepeateOrCopy,livre.DeliveredTo,livre.Note},commandType:CommandType.Text);
                return true;
            };
        }

        public static bool UpdateLivre(LivreModel livreU)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                bool isUpdated = false;
                try
                {
                    if (livreU != null)
                    {
                        cnn.Execute("UPDATE LivreTbl SET town=@town, section=@section, ilot=@ilot, lot=@lot, doubling=@doubling, deliveryDate=@deliveryDate,recordNum=@recordNum,arrangeNum=@arrangeNum,repeateOrCopy=@repeateOrCopy,deliveredTo=@deliveredTo,note=@note WHERE id=@id", livreU);
                        isUpdated = true;
                    }
                }
                catch (System.Exception ex)
                {

                    throw ex;
                } 
                return isUpdated;
            };
        }

        public static bool DeleteLivre(int id)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                bool isDeleted = false;
                cnn.Execute("DELETE FROM LivreTbl WHERE id=@id",new {  id});
                return isDeleted;
            };
        }

        public static bool SearchLivreWithLot(LivreModel livre)
        {

            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {

                    bool isFounded = false;

                    var searched=cnn.Query<LivreModel>("select * from livreTbl where town=@town and section=@section and ilot=@ilot and lot=@lot", new { livre.Town, livre.Section, livre.Ilot, livre.Lot }).FirstOrDefault();
                    if (searched != null)
                        isFounded = true;
                    else
                        isFounded = false;



                    return isFounded;

            };

        }


        private static string LoadConnectionString(string id = "default")
        {

            return ConfigurationManager.ConnectionStrings[id].ConnectionString;
        }
    }
}
