package ElectroMVC.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import ElectroMVC.Dto.ProductsDto;
import ElectroMVC.Dto.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao {
	
	private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.detail ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img, p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		return sql;
	}
	
	public List<ProductsDto> GetDataProducts() {
		StringBuffer sql = SqlString();
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND()");
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql.toString(), new ProductsDtoMapper());
		return listProducts;
	}
	
	private StringBuffer SqlProductByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = " + id + " ");
		return sql;
	}
	
	private String SqlProductPaginates(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductByID(id);
		sql.append("LIMIT " + start + ", " + totalPage);
		return sql.toString();
	}
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetDataProductsPaginates(int id, int start, int totalPage) {
		String sql = SqlProductPaginates(id, start, totalPage);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
}
