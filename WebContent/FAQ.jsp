<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jain General Store</title>
<!-- <script src='https://code.jquery.com/jquery-3.2.1.min.js'></script> -->
<%@ include file="common_plugin.jsp" %>
<link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
<style>
@import url('https://fonts.googleapis.com/css?family=Hind:300,400');
*, *:before, *:after {
  -webkit-box-sizing: inherit;
  box-sizing: inherit;
}
html {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  margin: 0;
  padding: 0;
  font-family: 'Hind', sans-serif;
  background: #fff;
  color: #4d5974;
  /* display: -webkit-box; */
/*   display: -webkit-flex; */
  /* display: -ms-flexbox; */
  /* display: flex; */
  min-height: 100vh;
}
.container {
  margin: 0 auto;
  padding: 4rem;
  width: 48rem;
}
h3 {
  font-size: 1.75rem;
  color: #373d51;
  padding: 1.3rem;
  margin: 0;
}
.accordion a {
  position: relative;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  width: 100%;
  padding: 1rem 3rem 1rem 1rem;
  color: #7288a2;
  font-size: 1.15rem;
  font-weight: 400;
  border-bottom: 1px solid #e5e5e5;
}
.accordion a:hover,
.accordion a:hover::after {
  cursor: pointer;
  color: #ff5353;
}
.accordion a:hover::after {
  border: 1px solid #ff5353;
}
.accordion a.active {
  color: #ff5353;
  border-bottom: 1px solid #ff5353;
}
.accordion a::after {
  font-family: 'Ionicons';
  content: '\f218';
  position: absolute;
  float: right;
  right: 1rem;
  font-size: 1rem;
  color: #7288a2;
  padding: 5px;
  width: 30px;
  height: 30px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  border: 1px solid #7288a2;
  text-align: center;
}
.accordion a.active::after {
  font-family: 'Ionicons';
  content: '\f209';
  color: #ff5353;
  border: 1px solid #ff5353;
}
.accordion .content {
  opacity: 0;
  padding: 0 1rem;
  max-height: 0;
  border-bottom: 1px solid #e5e5e5;
  overflow: hidden;
  clear: both;
  -webkit-transition: all 0.2s ease 0.15s;
  -o-transition: all 0.2s ease 0.15s;
  transition: all 0.2s ease 0.15s;
}
.accordion .content p {
  font-size: 1rem;
  font-weight: 300;
}
.accordion .content.active {
  opacity: 1;
  padding: 1rem;
  max-height: 100%;
  -webkit-transition: all 0.35s ease 0.15s;
  -o-transition: all 0.35s ease 0.15s;
  transition: all 0.35s ease 0.15s;
}
</style>
</head>
<body>
<%@ include file="header2.jsp" %>
<div class="container">
 
  <h2>Frequently Asked Questions</h2>
 
  <div class="accordion">
    <div class="accordion-item">
      <a>How do I track my order?</a>
      <div class="content">
        <p>Go to Orders on top right side of home page after log in.</p>
      </div>
    </div>
    <div class="accordion-item">
      <a>What if I miss my order delivery?</a>
      <div class="content">
        <p>Don't worry, the delivery boy will try to deliver again on next working day. You can also call to get the latest delivery update.</p>
      </div>
    </div>
    <div class="accordion-item">
      <a>How do I register myself as a new customer?</a>
      <div class="content">
        <p>You can click on below link to register yourself, fill up those details and click on continue.<a href="register.jsp">click here</a></p>
      </div>
    </div>
    <div class="accordion-item">
      <a>How long will it take to reach delivery to me?</a>
      <div class="content">
        <p>Product will reach to you in 2 or 3 working days.</p>
      </div>
    </div>
  </div>
  
</div>
<!-- <script  src="function.js"></script> -->
<script>
const items = document.querySelectorAll(".accordion a");

function toggleAccordion(){
  this.classList.toggle('active');
  this.nextElementSibling.classList.toggle('active');
}

items.forEach(item => item.addEventListener('click', toggleAccordion));
</script>
</body>
</html>