package ElectroMVC.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ElectroMVC.Dto.CartDto;
import ElectroMVC.Service.CartServiceImpl;

@Controller
public class CartController extends BaseController {
	
	@Autowired
	private CartServiceImpl _cartService = new CartServiceImpl();
	
	@RequestMapping(value = "/cart") 
	public ModelAndView cart() {
		_mvShare.setViewName("cart");
		return _mvShare;
	}
	
	@RequestMapping( value = "/addCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", _cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", _cartService.TotalPrice(cart)); 
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "editCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id, @PathVariable int quanty) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartService.EditCart(id, quanty, cart); 
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", _cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", _cartService.TotalPrice(cart)); 
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/deleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", _cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", _cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
}
