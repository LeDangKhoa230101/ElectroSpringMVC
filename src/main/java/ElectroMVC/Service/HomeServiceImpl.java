package ElectroMVC.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectroMVC.Dao.CategorysDao;
import ElectroMVC.Dao.ProductsDao;
import ElectroMVC.Dao.SlidesDao;
import ElectroMVC.Dto.ProductsDto;
import ElectroMVC.Entity.Categorys;
import ElectroMVC.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slideDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {
		return slideDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		return categorysDao.GetDataCategorys();
	}
	
	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
	
}
