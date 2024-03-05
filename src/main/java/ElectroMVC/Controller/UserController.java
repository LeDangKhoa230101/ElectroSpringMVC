package ElectroMVC.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ElectroMVC.Entity.Users;
import ElectroMVC.Service.AccountServiceImpl;

@Controller
public class UserController extends BaseController {
	
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountService.AddAccount(user);
		if(count > 0) {
			_mvShare.setViewName("redirect:login");
		} else {
			_mvShare.addObject("status", "Register Failed!");
		}
		
		return _mvShare;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("login");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView Signin(HttpSession session, @ModelAttribute("user") Users user) {
		user = accountService.Login(user);
		if(user != null) {
			_mvShare.setViewName("redirect:home");
			session.setAttribute("LoginInfo", user);
		} else {
			_mvShare.addObject("statusLogin", "Login Failed!");
		}
		return _mvShare;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}

}
