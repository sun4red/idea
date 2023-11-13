package acc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acc.dao.BoardDao;
import acc.model.Board;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bd;
	
	public List<Board> list(Board board){
		
		return bd.list(board);
	}
	

}
