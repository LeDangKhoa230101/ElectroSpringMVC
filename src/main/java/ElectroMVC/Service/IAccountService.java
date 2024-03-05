package ElectroMVC.Service;

import org.springframework.stereotype.Service;

import ElectroMVC.Entity.Users;

@Service
public interface IAccountService {
	
	public int AddAccount(Users user);
	
	public Users CheckAccountExis(Users user);
	
	public Users Login(Users user);
	
}
