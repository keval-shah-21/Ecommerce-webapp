<!-- ========================= FOOTER ========================= -->
<%@page import="com.takealot.bean.User"%>
<%HttpSession httpSession2 = request.getSession(false);
	User user1 =null;
	if(httpSession2!=null)
	{
		user1 = (User)httpSession2.getAttribute("loginBean");
	}%>
<footer class="section-footer bg-secondary">
	<div class="container">
		<section class="footer-top padding-y-lg text-white">
			<div class="row">
				<!-- <aside class="col-md col-6">
					<h6 class="title">Brands</h6>
					<ul class="list-unstyled">
						<li> <a href="#">Adidas</a></li>
						<li> <a href="#">Puma</a></li>
						<li> <a href="#">Reebok</a></li>
						<li> <a href="#">Nike</a></li>
					</ul>
				</aside> -->
				<aside class="col-md col-6">
					<h6 class="title">Company</h6>
					<ul class="list-unstyled">
						<li> <a href="about-us.jsp">About us</a></li>
						<!-- <li> <a href="#">Career</a></li> -->
						<!-- <li> <a href="#">Find a store</a></li> -->
						<!-- <li> <a href="#">Rules and terms</a></li> -->
						<!-- <li> <a href="#">Sitemap</a></li> -->
					</ul>
				</aside>
				<aside class="col-md col-6">
					<h6 class="title">Help</h6>
					<ul class="list-unstyled">
						<li> <a href="contact-us.jsp">Contact us</a></li>
						<!-- <li> <a href="#">Money refund</a></li> -->
						<!-- <li> <a href="#">Order status</a></li> -->
						<!-- <li> <a href="#">Shipping info</a></li>
						<li> <a href="#">Open dispute</a></li> -->
					</ul>
				</aside>
				<aside class="col-md col-6">
					<h6 class="title">Account</h6>
					<ul class="list-unstyled">
						<% if(user1==null){ %>
						<li> <a href="page-user-login.jsp"> User Login </a></li>
						<li> <a href="register.jsp"> User register </a></li>
						<%}else{ %>
						<li> <a href="edit-profile.jsp"> Account Setting </a></li>
						<li> <a href="user-profile-orders.jsp"> My Orders </a></li>
						<%} %>
					</ul>
				</aside>
				<!-- <aside class="col-md">
					<h6 class="title">Social</h6>
					<ul class="list-unstyled">
						<li><a href="#"> <i class="fab fa-facebook"></i> Facebook </a></li>
						<li><a href="#"> <i class="fab fa-twitter"></i> Twitter </a></li>
						<li><a href="#"> <i class="fab fa-instagram"></i> Instagram </a></li>
						<li><a href="#"> <i class="fab fa-youtube"></i> Youtube </a></li>
					</ul>
				</aside> -->
			</div> <!-- row.// -->
		</section>	<!-- footer-top.// -->

		<section class="footer-bottom text-center">
		
				<p class="text-white">Privacy Policy - Terms of Use - User Information Legal Enquiry Guide</p>
				<p class="text-muted"> &copy 2021 Takealot, All rights reserved </p>
				<br>
		</section>
	</div><!-- //container -->
</footer>
<!-- ========================= FOOTER END // ========================= -->

