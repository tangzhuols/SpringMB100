  function refreshCc()     //刷新验证码
  { 
	      var ccImg = document.getElementById("checkcodeimg");
		  nowTime = new Date();
		 ccImg.src= "checkcode?e=" + nowTime.getTime(); 
 }
 
 function hg(obj,z){ 
   obj.style.filter = "progid:DXImageTransform.Microsoft.Glow ( enabled="+z+" , color=blue , strength=1 ) " ;
 }
  
  