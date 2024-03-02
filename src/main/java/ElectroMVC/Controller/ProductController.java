package ElectroMVC.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ElectroMVC.Service.IProductService;

@Controller
public class ProductController extends BaseController {
	
	@Autowired
	private IProductService _productService;

	@RequestMapping(value = "/detail/{id}")
	public ModelAndView product(@PathVariable long id) {
		_mvShare.setViewName("product");
		_mvShare.addObject("product", _productService.GetProductByID(id));
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductsByIDCategory(idCategory));
		return _mvShare;
	}
}
