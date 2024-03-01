package ElectroMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ElectroMVC.Entity.MapperSlides;
import ElectroMVC.Entity.Slides;

@Repository
public class SlidesDao extends BaseDao {
	
	public List<Slides> GetDataSlide() {
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slide";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}
	
}
