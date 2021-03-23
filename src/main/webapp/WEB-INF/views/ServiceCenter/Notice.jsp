
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../setting.jsp"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<script src="https://unpkg.com/react@15/dist/react.min.js"></script> <!--react -->
<script src="https://unpkg.com/react-dom@15/dist/react-dom.min.js"></script> <!-- react-dom -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.38/browser.min.js"></script> <!-- babel -->
<script src="https://unpkg.com/vue@2.6.10/dist/vue.js"></script> <!-- vue -->
<script src="https://unpkg.com/vue-router/dist/vue-router.js"></script> <!-- router -->

  <body>
    <div class="preloader">
      <div class="preloader-body">
        <div class="cssload-container">
          <div class="cssload-speeding-wheel"></div>
        </div>
        <p>Loading...</p>
      </div>
    </div>
    <div class="page">
    	<%@ include file="../header.jsp" %>
    	<section class="section section-bredcrumbs">
	        <div class="container context-dark breadcrumb-wrapper">
	          <h2>공지사항(리액트)</h2><br>
	        </div>
	     </section>
			<main id="main" class="main">
			    <div class="container">
			    <br> <br> <br> <br> <br> <br> <br>
				<form class="form-signin" action="loginAction.cc" method="post" role="form" >
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<img src="resources/images/notice.jpg"></img>
					<div id="react"></div>
		<script type="text/babel">
		/*
		const Root =()=>(
     		<div>
            	<h2>Root</h2>
				<input class="btn" type="button" value="홈" onClick={About} />
				<input class="btn" type="button" value="어바웃" onClick={Home} />
        	</div>
		);
		const Home=()=>{
    		return(
        		<div>
            		<h2>Home</h2>
					<Route path="/home" component={Home} />
        		</div>
   			 );
		}
		const About=()=>{
    		return(
        		<div>
            		<h2>About</h2>
					<Route path="/about" component={About} />
        		</div>
    		);
		}


		ReactDOM.render(<Root />,document.getElementById('react'))
		/*
		const view = getDOM() //함수를 통해서 컴포넌트의 정보리턴받음
		ReactDOM.render(view,document.getElementById('react'))
		function getDOM(){
      		// 각 변수에 css 설정을 담아둡니다
		
			const css1={
				'color' : '#f00',
				'background-color' : '#f0f0ff',
				'font-size' : '2em'
			}
			const css2={
				'color' : '#00f',
				'background-color' : '#fff0ff',
				'font-size' : '2em'
			}
			const css3={
				'width': '100%',
				'max-width': '100%',
				'text-align': 'left',
				'background': '#ffffff',
				'border-collapse': 'collapse'
			}
			const clickHandler=(e)=>{
				alert('${key111}')	
			}
			
		
		
      			//return 하는 html 구조에 style의 속성에 변수에 담긴 
      			//css 속성을 적용하기 위해 {변수} 로 담아줍니다.
			return(
				<div>
					<input class="btn" type="button" value="테스트버튼" onClick={clickHandler} />

					<table style={css3}>
                  <thead>
                    <tr>
                      <th>Column 1</th>
                      <th>Column 2</th>
                      <th>Column 3</th>
                      <th>Column 4</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Item #1</td>
                      <td>Description</td>
                      <td>Subtotal</td>
                      <td>$3.00</td>
                    </tr>
                    <tr>
                      <td>Item #2</td>
                      <td>Description</td>
                      <td>Discount</td>
                      <td>$3.00</td>
                    </tr>
                    <tr>
                      <td>Item #3</td>
                      <td>Description</td>
                      <td>Shipping</td>
                      <td>$3.00</td>
                    </tr>
                    <tr>
                      <td>Item #4</td>
                      <td>Description</td>
                      <td>Tax</td>
                      <td>$4.00</td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td>All Items</td>
                      <td>Description</td>
                      <td>Your Total</td>
                      <td>$13.00</td>
                    </tr>
                  </tfoot>
                </table>
					<p style={css1}>React의 구조와 작성법</p>
					<p style={css2}>React의 JSX 사용법(변수, 이벤트처리, 스타일 적용, 주석)</p>
				</div>
			)
			
		} 
		*/
		</script>
		
		
				</form>
				</div>
				</main>
                <img src="../teamProject/resources/testimage/공지사항.JPG">
			    <br> <br> <br> <br> <br> <br> <br>
    	<%@ include file="../footer.jsp" %>
    </div>
  </body>
</html>
