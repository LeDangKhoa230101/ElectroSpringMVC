package ElectroMVC.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckoutController {

	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout";
	}
	
}