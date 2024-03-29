package ElectroMVC.Controller;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import ElectroMVC.Service.HomeServiceImpl;

@Controller
public class BaseController {

	@Autowired
	HomeServiceImpl _homeService;
	
	public ModelAndView _mvShare = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		return _mvShare;
	}
}
