package ElectroMVC.Service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import ElectroMVC.Dto.CartDto;
import ElectroMVC.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
}
