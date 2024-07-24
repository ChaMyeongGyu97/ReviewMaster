package review.codemaster.vo;

public class CommentVO {
	private int review_no = 0;
	private String cmt = null;
	@Override
	public String toString() {
		return "CommentVO [review_no=" + review_no + ", cmt=" + cmt + "]";
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	
}
