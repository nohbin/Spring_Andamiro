package com.andamiro.service.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andamiro.domain.board.BoardVO;
import com.andamiro.domain.board.Criteria;

public interface BoardService {


	public List<BoardVO> getListTemp();
	public List<BoardVO> getListWithPaging(Criteria cri);
//	public List<BoardVO> getListWithPaging(Criteria cri, String cno);
	
	public int register(BoardVO board);
	public BoardVO read(Long bno);
	public boolean modify(BoardVO board);
	public boolean delete(Long bno);
	
	public int getTotalCount(Criteria cri);
//	public int getTotalCount(Criteria cri, String cno);
	public Long recommend(Long bno);

	
	

}
