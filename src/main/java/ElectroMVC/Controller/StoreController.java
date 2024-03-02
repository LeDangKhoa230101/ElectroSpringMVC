package ElectroMVC.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ElectroMVC.Dto.PaginatesDto;
import ElectroMVC.Service.CategoryServiceImpl;
import ElectroMVC.Service.PaginatesServiceimpl;

@Controller
public class StoreController extends BaseController {

	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginatesServiceimpl paginateService;
	
	private int totalProductsPage = 6;

	@RequestMapping(value = "/store/{id}")
	public ModelAndView store(@PathVariable String id) {
		_mvShare.setViewName("store");
		_mvShare.addObject("idCategory", id);

		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("ProductsPaginate",
				categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/store/{id}/{currentPage}")
	public ModelAndView store(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("store");
		_mvShare.addObject("idCategory", id);

		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("ProductsPaginate",
				categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}
