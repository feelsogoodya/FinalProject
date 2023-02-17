 package com.itwillbs.domain;

public class ProductDTO {
		private String memberId;
		private String productTitle;
		private int productPrice;
		private String productPic;
		
		
		public String getMemberId() {
			return memberId;
		}
		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}
		public String getProductTitle() {
			return productTitle;
		}
		public void setProductTitle(String productTitle) {
			this.productTitle = productTitle;
		}
		public int getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(int productPrice) {
			this.productPrice = productPrice;
		}
		public String getProductPic() {
			return productPic;
		}
		public void setProductPic(String productPic) {
			this.productPic = productPic;
		}

		

}
