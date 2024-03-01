package ElectroMVC.Service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectroMVC.Dto.ProductsDto;
import ElectroMVC.Entity.Categorys;
import ElectroMVC.Entity.Slides;

@Service
public interface IHomeService {
	
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<ProductsDto> GetDataProducts();
}
