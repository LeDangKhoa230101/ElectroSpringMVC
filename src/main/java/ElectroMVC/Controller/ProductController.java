package ElectroMVC.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController extends BaseController {

	@RequestMapping(value = "/product")
	public ModelAndView product() {
		_mvShare.setViewName("product");
		return _mvShare;
	}
}
