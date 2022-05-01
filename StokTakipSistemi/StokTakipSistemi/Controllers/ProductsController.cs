using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StokTakipSistemi.Models;
using StokTakipSistemi.Models.DB;

namespace StokTakipSistemi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        ProductsCRUD products = new();

        [HttpGet]
        public IActionResult Get() => products.GetAllProducts() != null ? Ok(products.GetAllProducts()) : NotFound();

        [HttpGet("{productId}")]
        public IActionResult Get(int? productId) => productId != null ? Ok(products.GetProductById(productId)) : NotFound();

        [HttpPost]
        public IActionResult Post(Stok stok) => stok.MalzemeAdi != null && 
                                                stok.BirimFiyat != null && 
                                                stok.StokAdedi != null ? Ok(products.AddProduct(stok)) : BadRequest();

        [HttpPut("{productId}")]
        public IActionResult Put(Stok stok) => stok != null ? Ok(products.UpdateProduct(stok)) : BadRequest();

        [HttpDelete("{productId}")]
        public IActionResult Delete(int? productId) => productId != null ? Ok(products.DeleteProduct(productId)) : BadRequest();
    }
}
