package review.codemaster.vo;

import java.util.List;

public class ReviewVO {
	private int no = 0;
	private String shop_name = null;
	private String region = null;
	private String review = null;
	private String in_date = null;
	private int star_point = 0;
	private String user_name = null;
	private String pw = "0000";
	private List <String> cmtList = null;
	@Override
	public String toString() {
		return "ReviewVO [no=" + no + ", shop_name=" + shop_name + ", region=" + region + ", review=" + review
				+ ", in_date=" + in_date + ", star_point=" + star_point + ", user_name=" + user_name + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getIn_date() {
		return in_date;
	}
	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}
	public int getStar_point() {
		return star_point;
	}
	public void setStar_point(int star_point) {
		this.star_point = star_point;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public List<String> getCmtList() {
		return cmtList;
	}
	public void setCmtList(List<String> cmtList) {
		this.cmtList = cmtList;
	}
}
