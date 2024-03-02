package ElectroMVC.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import ElectroMVC.Dto.ProductsDto;

@Service
public interface IProductService {
	
	public ProductsDto GetProductByID(long id);
	public List<ProductsDto> GetProductsByIDCategory(int id);
}
