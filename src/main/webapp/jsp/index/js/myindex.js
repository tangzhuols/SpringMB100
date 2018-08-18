  function refreshCc()     //鍒锋柊楠岃瘉鐮�
  { 
	      var ccImg = document.getElementById("checkcodeimg");
		  nowTime = new Date();
		 ccImg.src= "checkcode?e=" + nowTime.getTime(); 
 }
 
 function hg(obj,z){ 
   obj.style.filter = "progid:DXImageTransform.Microsoft.Glow ( enabled="+z+" , color=red , strength=3 ) " ;
 }
  
  