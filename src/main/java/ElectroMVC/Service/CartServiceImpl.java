package ElectroMVC.Service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectroMVC.Dao.CartDao;
import ElectroMVC.Dto.CartDto;

@Service
public class CartServiceImpl implements ICartService {
	
	@Autowired
	private CartDao cartDao = new CartDao();

	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		return cartDao.AddCart(id, cart);
	}

	public HashMap<Long, CartDto> EditCart(long id, int quantity, HashMap<Long, CartDto> cart) {
		return cartDao.EditCart(id, quantity, cart);
	}

	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		return cartDao.DeleteCart(id, cart);
	}

	public int TotalQuantity(HashMap<Long, CartDto> cart) {
		return cartDao.TotalQuantity(cart);
	}

	public double TotalPrice(HashMap<Long, CartDto> cart) {
		return cartDao.TotalPrice(cart);
	}

}
