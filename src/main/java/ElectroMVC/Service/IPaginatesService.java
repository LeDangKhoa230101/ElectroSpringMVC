package ElectroMVC.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ElectroMVC.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	
	@Autowired
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
