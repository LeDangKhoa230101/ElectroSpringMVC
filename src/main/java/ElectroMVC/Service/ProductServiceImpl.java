package ElectroMVC.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectroMVC.Dao.ProductsDao;
import ElectroMVC.Dto.ProductsDto;

@Service
public class ProductServiceImpl implements IProductService{
	
	@Autowired
	ProductsDao productDao = new ProductsDao();

	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> listProducts = productDao.GetProductByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDto> GetProductsByIDCategory(int id) {
		return productDao.GetAllProductsByID(id);
	}

}
