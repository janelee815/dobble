<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������б� ���Ƹ� ��õ ���ø����̼�</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="doble.css"> 
</head>
<body>
  <div>
    <section id = "qna">
      <div class="status mx-auto mt-5">
        <div class = "statusBar"></div>
      </div>
      <div>
<h1 class="mx-auto mt-5 pt-4 px-4 py-4">���뿡 ������ �ͳ���?</h1></div>
<form action="${contextPath}/clubreco/surveysubmit7" method="post">
<div id="answer" class="mx-auto mt-5 pt-5 px-5 py-5" >
<input type="radio" name="selectedclub" value="yes" checked="checked">��
<input type="radio" name="selectedclub" value="no">�ƴϿ�
</div>
<div id="send" class="mx-auto mt-5 pt-5 px-5 py-5">
  <input type="submit" value="����">
  <input type="reset" value="�ٽ� �Է�">
  </div>
</form>
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
    status.style.width = (100/endPoint) * 3 + '%';
  }
</script>  
</body>
</html>