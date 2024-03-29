package ElectroMVC.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectroMVC.Dto.ProductsDto;

@Service
public interface ICategoryService {

	@Autowired
	public List<ProductsDto> GetAllProductsByID(int id);
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage);
	
}
