package de.kuebler.erp.crm.dao.impl.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import de.kuebler.erp.crm.mvc.model.RequestModel;



public class RequestModelResultSetExtractor implements ResultSetExtractor<List<RequestModel>> {
	
	
	private static RequestModelResultSetExtractor instance = new RequestModelResultSetExtractor();
	
	private RequestModelResultSetExtractor(){}
	
	public static RequestModelResultSetExtractor getInstance() {
		return instance;
	}


	public List<RequestModel> extractData(ResultSet rs) throws SQLException, DataAccessException {
		List<RequestModel> returnList = new ArrayList<RequestModel>();
		
		while(rs.next()){
			RequestModel model = new RequestModel();
			model.setId(rs.getInt("idRequest"));
			model.setCustomer_Id(rs.getInt("idCustomer"));
			model.setComission_Id(rs.getInt("idCommission"));
			model.setDate_created(rs.getDate("DateCreated"));
			model.setLast_changed(rs.getTimestamp("LastChanged"));
			model.setCreated_by(rs.getInt("CreatedBy"));
			model.setLast_changed_by(rs.getInt("LastChangedBy"));
			model.setIn_process_by(rs.getInt("InProcessBy"));
			model.setProduct(rs.getString("Product"));
			model.setStatus(rs.getString("Status"));
			model.setType(rs.getString("Art"));
			model.setNote(rs.getString("Note"));
			model.setActive(rs.getBoolean("Active"));
			
			returnList.add(model);	
			System.out.println(model.printModel());
		}
		
		return returnList;
	}

}
