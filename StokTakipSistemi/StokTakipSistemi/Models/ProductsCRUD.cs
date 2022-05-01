using StokTakipSistemi.Models.DB;

namespace StokTakipSistemi.Models
{

    public class ProductsCRUD
    {
        StokTakipSistemiContext db = new();
        Stok? stok;

        public IEnumerable<Stok> GetAllProducts()
        {
            try
            {
                return db.Stok.ToList();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public IQueryable<Stok> GetProductById(int? productId)
        {
            try
            {
                return db.Stok.Where(product => product.Id == productId).AsQueryable();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public string AddProduct(Stok stok)
        {
            try
            {
                db.Stok.Add(stok);
                db.SaveChanges();
                return "success";
            }
            catch (Exception)
            {
                return "false";
            }
        }

        public string UpdateProduct(Stok stok)
        {
            try
            {
                db.Stok.Update(stok);
                db.SaveChanges();
                return "success";
            }
            catch (Exception)
            {
                return "false";
            }
        }

        public string DeleteProduct(int? productId)
        {
            try
            {
                stok = db.Stok.Where(product => product.Id == productId).SingleOrDefault();
                db.Stok.Remove(stok);
                db.SaveChanges();
                return "success";
            }
            catch (Exception)
            {
                return "false";
            }
        }
    }
}
