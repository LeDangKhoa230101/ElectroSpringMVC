package ElectroMVC.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	
	@RequestMapping("/")
	public ModelAndView index() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("index");
		return _mvShare;
	}
	
}
