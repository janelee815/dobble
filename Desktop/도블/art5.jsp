<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������б� ���Ƹ� ��õ ���ø����̼�</title>
</head>
<body>
  <div>
    <section id = "qna">
      <div class="status mx-auto mt-5">
        <div class = "statusBar"></div>
      </div>
      <div>
<h1 class="mx-auto mt-5 pt-4 px-4 py-4">���� ���� ��������?</h1></div>
<form action="${contextPath}/clubreco/surveysubmit10" method="post">
<div id="answer" class="mx-auto mt-5 pt-5 px-5 py-5" >
<input type="radio" name="selectedclub" value="theater" checked="checked">����
<input type="radio" name="selectedclub" value="magic">����  
<input type="radio" name="selectedclub" value="edit">��������
<input type="radio" name="selectedclub" value="boardgame">�������
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
    status.style.width = (100/endPoint) * 4 + '%';
  }
</script>  
</body>
</html>