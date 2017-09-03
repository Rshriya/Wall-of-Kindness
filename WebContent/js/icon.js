var html,body;
var modal;

window.onload=init();

function init(){
	body=document.body;
	document.getElementById("bt-confirm").addEventListener('click',confirm_updateTournamentInfo,false);

}
function confirm_updateTournamentInfo(e){
	var name=document.getElementById("name").value;
	var date=document.getElementById("date").value;
	var time=document.getElementById("time").value;
	var game=document.getElementById("doantion");
	var selectedDonation="icon.html";
	var optionList=donation.options;
	for(var i=0;i<optionList.length;i++){
		if(optionList[i].selected){
			selectedDonation = optionList[i].innerHTML;
			break;
		}
	}
	var description=document.getElementById("description").innerHTML;
	
	var list=[
		["name",name],
		["date",date],
		["time",time],
		["donation",selectedDonation],
	];
	
	showModal({
		lead:		"Are you sure you want to cancle the donation?",
		list:		list,
		bt_ok_txt:	"Update",
		form:		"frm001"
	});
}



function showModal(prm){
	var prm0=$.extend(true, {}, modalDefaultParam);
	var param=mergeObjects(prm0, prm);
	
	modal=document.createElement("div");
	modal.className="modal";
	
	var modal_contents=document.createElement("div");
	modal_contents.className="modal-contents";
	
	var title=document.createElement("span");
	title.className="title";
	title.innerHTML=param.title;
	
	var lead=document.createElement("span");
	lead.className="lead";
	lead.innerHTML=param.lead;
	
	/* btList -------------------------------- */
	var btList=document.createElement("ul");
	btList.className="btList";
	
	var li_ok=document.createElement("li");
	var li_ok_button=document.createElement("button");
	li_ok_button.className="bt bt-colored";
	li_ok_button.innerHTML=param.bt_ok_txt;
	li_ok.appendChild(li_ok_button);
	li_ok_button.addEventListener('click',function(){
		submitForm(param.form);
	},false);
	
	var li_cancel=document.createElement("li");
	var li_cancel_button=document.createElement("button");
	li_cancel_button.className="bt bt-default";
	li_cancel_button.innerHTML=param.bt_cancel_txt;
	li_cancel.appendChild(li_cancel_button);
	li_cancel_button.addEventListener('click',function(){
		body.removeChild(modal);
	},false);
	
	btList.appendChild(li_ok);
	btList.appendChild(li_cancel);
	
	/* dl_list -------------------------------- */
	var dl_list=document.createElement("dl");
	dl_list.className="dl-list";
	var list=param.list;
	var len=list.length;
	for(var i=0; i<len; i++){
		var arr=list[i];
		var dt=document.createElement("dt");
		dt.innerHTML = arr[0];
		var dd=document.createElement("dd");
		dd.innerHTML = arr[1];
		dl_list.appendChild(dt);
		dl_list.appendChild(dd);
	}
	
	modal_contents.appendChild(title);
	modal_contents.appendChild(lead);
	modal_contents.appendChild(btList);
	modal_contents.appendChild(dl_list);
	
	modal.appendChild(modal_contents);
	
	body.appendChild(modal);
}
var modalDefaultParam={
	title:			"Confirmation",
	lead:			"Are you sure?",
	list:			[],
	bt_ok_txt:		"OK",
	bt_cancel_txt:	"Cancel",
	form:			"frm001"
};

function submitForm(frm){
	document.forms[frm].target="_self";
	document.forms[frm].submit();
}
function mergeObjects(obj1, obj2) {
    if (!obj2) obj2 = {};
    for (var attrname in obj2) {
        if (obj2.hasOwnProperty(attrname)) {
            obj1[attrname] = obj2[attrname];
        }
    }
    return obj1;
}
