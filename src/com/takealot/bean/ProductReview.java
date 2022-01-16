package com.takealot.bean;

public class ProductReview {

		private int productReviewId;
		private int userId;
		private int productId;
		private String productReview;
		public int getProductReviewId() {
			return productReviewId;
		}
		public void setProductReviewId(int productReviewId) {
			this.productReviewId = productReviewId;
		}
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public int getProductId() {
			return productId;
		}
		public void setProductId(int productId) {
			this.productId = productId;
		}
		public String getProductReview() {
			return productReview;
		}
		public void setProductReview(String productReview) {
			this.productReview = productReview;
		}
		
}
