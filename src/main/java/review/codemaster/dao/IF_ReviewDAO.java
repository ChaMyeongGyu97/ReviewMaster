package review.codemaster.dao;

import java.util.List;

import review.codemaster.vo.CommentVO;
import review.codemaster.vo.PageVO;
import review.codemaster.vo.ReviewVO;

public interface IF_ReviewDAO {
	public void insert(ReviewVO rvo) throws Exception;
	public List<ReviewVO> select(PageVO pagevo) throws Exception;
	public void delete(String delno) throws Exception;
	public void update(ReviewVO rvo) throws Exception;
	public ReviewVO modselect(String modno) throws Exception;
	public void insertcmt(CommentVO cvo) throws Exception;
	public List<CommentVO> selectcmt() throws Exception;
	public int getTotalCount(String sword) throws Exception;
}
