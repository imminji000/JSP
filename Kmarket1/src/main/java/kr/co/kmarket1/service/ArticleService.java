package kr.co.kmarket1.service;

import java.util.List;

import kr.co.kmarket1.dao.ArticleDAO;
import kr.co.kmarket1.vo.CsArticleVO;

public enum ArticleService {
	
	INSTANCE;
	private ArticleDAO dao = ArticleDAO.getInstance();
	
	public int selectCountNotice(String cate) {
		return dao.selectCountNotice(cate);
	}
	public int selectCountNoticeAll() {
		return dao.selectCountNoticeAll();
	}
	
	public List<CsArticleVO> selectNotice(String cate, int start) {
		return dao.selectNotice(cate, start);
	}
	
	public List<CsArticleVO> selectAllNotice(int start) {
		return dao.selectAllNotice(start);
	}
	
	public CsArticleVO selectArticleNotice(String no) {
		return dao.selectArticleNotice(no);
	}
	
	public int getLastPageNum(int total) {
		int lastPageNum = 0;
		
		if(total % 10 == 0) {
			lastPageNum = total / 10;
		}else {
			lastPageNum = total / 10 + 1;
		}
		
		return lastPageNum;
	}
	
	public int[] getPageGroupNum(int currentPage, int lastPageNum) {
		int currentPageGroup = (int)Math.ceil(currentPage / 10.0);
		int pageGroupStart = (currentPageGroup -1) * 10 + 1;
		int pageGroupEnd = currentPageGroup * 10;
		
		if(pageGroupEnd > lastPageNum) {
			pageGroupEnd = lastPageNum;
		}
		
		int[] result = {pageGroupStart, pageGroupEnd};
		
		return result;
	}
	
	public int getPageStartNum(int total, int currentPage) {
		int start = (currentPage - 1) * 10;
		return total - start;
	}
	
	public int getCurrentPage(String pg) {
		int currentPage = 1;
		
		if(pg != null) {
			currentPage = Integer.parseInt(pg);
		}
		return currentPage;
	}
	
	public int getStartNum(int currentPage) {
		return (currentPage - 1) * 10;
	}
	

	
}
