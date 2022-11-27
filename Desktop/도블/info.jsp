<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������б� ���Ƹ� ��õ ���ø����̼�</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="main.css"> 
</head>
<body>
<div>
<section id = "main" class="mx-auto mt-5 pt-5 px-5 py-5">
<h3>�������б� ���Ƹ� ��õ ��</h3>
<div class="col-6 mx-auto">
    <img src="04.png" class="img-fluid pt-3">
  </div>
<p class="mt-4">어떤 동아리가 나한테 맞는지 알고 싶을 때!<br>
    동아리 테스트하러 가볼까요?</p>
<button onclick="location.href='userinfo'" onclick="begin()" class="btn btn-danger btn-lg">����!</button>
</section>
</div>
<script>
    const main = document.querySelector("#main");
    const qna = document.querySelector("#qna");
    const result = document.querySelector("#result");
    const endPoint = 4;
    
    function begin(){
      main.style.animation = "fadeOut 1s";
      setTimeout(() => {
      qna.style.animation = "fadeIn 1s";
      setTimeout(() => {
        main.style.display = 'none';
        qna.style.display = 'block';
      }, 500)
      next();
      }, 500);
      result();
    }
    

    function next(){
      var status = document.querySelector('.statusBar');
      status.style.width = (100/endPoint) * 4 + '%';
    }
  </script>  
</body>
</html>