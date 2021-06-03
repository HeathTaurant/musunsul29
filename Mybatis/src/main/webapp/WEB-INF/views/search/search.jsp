<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

 <script>
        function noSpaceForm(obj) { // 공백사용못하게
            var str_space = /\s/;  // 공백체크
            if(str_space.exec(obj.value)) { //공백 체크
                alert("해당 항목에는 공백을 사용할수 없습니다.\n\n공백은 자동적으로 제거 됩니다.");
                obj.focus();
                obj.value = obj.value.replace(' ',''); // 공백제거
                return false;
            }
         // onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"
        }
        
        $(function(){
        	$('.et_count').html('1234');
        })
        </script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }


        ul {
            list-style-type: none;
        }

        a:link,
        a:visited {
            padding: 10px 0px;
            width: 150px;
            font-size: 20px;
            line-height: 20px;
            
            
            display: inline-block;
            text-decoration: none;
            color: black;
        }
      


        section{
            width: 1200px;
            border: 1px solid black;
            margin: 0 auto;
            
            padding:20px 0px;
        }
        article{
           
            margin: 20px auto;
            width:700px;
            height: 300px;
            border:1px solid red;
            display: inline-block;
            box-sizing: border-box;
      
        }


        img{
                width: 100px;
                height: 100px;
            }


        
    </style>


</head>
<body>

 <section class="search">
        <h1>검색페이지</h1><hr><br><br>

        <header>

            <nav>
                <form action="">
                    
                        검색: <input type="text" name="test" id="test" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" placeholder="검색 할 술이름을 입력하세요 " />
                
                        <input type="submit" value="검색">
                    </form>
        
            </nav>
    
        </header><hr><br>
       
        <article class="box">
        <h2 class="title"></h2>
        <div>
            <img src="/img/99F3B53C5B322A7D09.jpg"/>
        </div>
        <ul>
        	<li class="et_count"></li>
        	<li class="re_like"></li>
        	<li class="re_count"></li>
        	<li class="et_tmi"></li>
        </ul>
            조화수: ${ethanol.et_count}<br>                                           
            좋아요:   ${review.re_like}<br> 
            리뷰수:  ${review.re_count}<br>
            술 정보:  ${ethanol.et_tmi}<br>  
        </article>
        <article><h2>GOOSE IPA</h2><br>
        </article>
        <article><h2>GOOSE IPA</h2><br>
        
        
        </article>
     
    
    
    </section>

</body>
</html>