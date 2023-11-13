package acc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import acc.model.Board;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSessionTemplate sst;
	
	public List<Board> list(Board board) {
		/*
		 * HashMap<String, Integer> hm=new HashMap<String, Integer>();
		 * hm.put("startRow",startRow); 
		 * hm.put("endRow",endRow);
		 */
		return sst.selectList("boardns.list", board);
	}
}

	
