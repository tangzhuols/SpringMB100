var dex=0;
//ÂË¾µÐ§¹û
function showTime(){
	var dn=dex==3?0:dex+1;
	if(pdiv.children(dex).style.visibility=="hidden")pdiv.children(dn).style.visibility="visible";
	else pdiv.children(dn).style.visibility="hidden";
	pdiv.filters[0].apply();
	if(pdiv.children(dex).style.visibility=="visible")pdiv.children(dex).style.visibility="hidden";
	else pdiv.children(dex).style.visibility="visible";
	if(pdiv.children(dn).style.visibility=="visible")pdiv.children(dn).style.visibility="hidden";
	else pdiv.children(dn).style.visibility="visible";
	pdiv.filters[0].play();
	dex++;
	if(dex>3)dex=0; 
	setTimeout(showTime,10000);
}
function init(){
	cdiv0.style.visibility="visible";
	showTime();
}
  
  