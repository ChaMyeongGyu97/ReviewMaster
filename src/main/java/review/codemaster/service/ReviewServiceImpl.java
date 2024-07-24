package review.codemaster.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import review.codemaster.dao.IF_ReviewDAO;
import review.codemaster.vo.CommentVO;
import review.codemaster.vo.PageVO;
import review.codemaster.vo.ReviewVO;
@Service
public class ReviewServiceImpl implements IF_ReviewService{
	@Inject
	IF_ReviewDAO rdao;
	
	@Override
	public void insert(ReviewVO rvo) throws Exception {
		// TODO Auto-generated method stub
		rdao.insert(rvo);
	}

	@Override
	public List<ReviewVO> select(PageVO pagevo) throws Exception {
		List<ReviewVO> rList = rdao.select(pagevo);
//		List<CommentVO> cList = rdao.selectcmt();
//		for(ReviewVO rvo : rList) {
//			List<String> cmtList;
//			rvo.setCmtList(cmtList);
//		}
		return rList;
	}

	@Override
	public void delete(String delno) throws Exception {
		rdao.delete(delno);
	}

	@Override
	public void update(ReviewVO rvo) throws Exception {
		rdao.update(rvo);
	}

	@Override
	public ReviewVO modselect(String modno) throws Exception {
		return rdao.modselect(modno);
	}

	@Override
	public void insertcmt(CommentVO cvo) throws Exception {
		rdao.insertcmt(cvo);
	}

	@Override
	public int getTotalCount(String sword) throws Exception {
		return rdao.getTotalCount(sword);
	}

}
