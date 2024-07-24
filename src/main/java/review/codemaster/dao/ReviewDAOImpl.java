package review.codemaster.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import review.codemaster.vo.CommentVO;
import review.codemaster.vo.PageVO;
import review.codemaster.vo.ReviewVO;
@Repository
public class ReviewDAOImpl implements IF_ReviewDAO{
	private static String mapperQuery="review.codemaster.dao.IF_ReviewDAO";
	@Inject
	SqlSession sqlSession;
	@Override
	public void insert(ReviewVO rvo) throws Exception {
		sqlSession.insert(mapperQuery+".insert", rvo);
	}
	@Override
	public List<ReviewVO> select(PageVO pagevo) throws Exception {
		return sqlSession.selectList(mapperQuery+".select", pagevo);
	}
	@Override
	public void delete(String delno) throws Exception {
		sqlSession.delete(mapperQuery+".delete", delno);
	}
	@Override
	public void update(ReviewVO rvo) throws Exception {
		sqlSession.update(mapperQuery+".update", rvo);
	}
	@Override
	public ReviewVO modselect(String modno) throws Exception {
		return sqlSession.selectOne(mapperQuery+".modselect", modno);
	}
	@Override
	public void insertcmt(CommentVO cvo) throws Exception {
		sqlSession.insert(mapperQuery+".insertcmt", cvo);
	}
	@Override
	public List<CommentVO> selectcmt() throws Exception {
		return sqlSession.selectList(mapperQuery+".selectcmt");
	}
	@Override
	public int getTotalCount(String searchKeyword) throws Exception {
		return sqlSession.selectOne(mapperQuery+".getTotalCount", searchKeyword);
	}

}
