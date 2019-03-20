/**
 * 
 */
function checkSearch(){
	var txtWarning = document.getElementById('warning_search'); //Add Element <p> in Search.jsp
	var txtCustomerName = document.getElementById('txtCustomerName');
	var txtBirthdayForm = document.getElementById('txtBirthdayFrom');
	var txtBirthdayTo = document.getElementById('txtBirthdayTo');
	var txtSelectSex = document.getElementById('txtSelectSex');
	
//	if(checkEmpty(txtCustomerName, txtBirthdayFrom, txtBirthdayTo, txtSelectSex) == true){
//		txtWarning.innerHTML = "Moi nhap Truong de Search";
//		return false;
//	}
	var r = txtCustomerName.value;  
		r = r.replace(" ","");
		alert(r);
//	if(txtCustomerName.value.replace(" ","") == ""){
//		aler('hello');
//	}
//	
//	if(	txtCustomerName.value.replace(" ","") == "" 
//		&& txtBirthdayFrom.value.replace(" ","") == ""
//		&& txtBirthdayTo.value.replace(" ","") == ""
//		&& txtSelectSex.selectedIndex == 0)
//	{
//		return true;
//	}
}

function checkDate(){
	
	var regex = /^(19[5-9][0-9]|20[0-4][0-9]|2050)[/]([0][1-9]|1[0-2])[/]([0][1-9]|[12][0-9]|3[01])$/i;
	var txtBirthdayForm_Res = regex.test(txtBirthdayForm.value);
	var txtBirthdayTo_Res = regex.test(txtBirthdayTo.value);
	return false;
}

function checkEmpty(txtCustomerName, txtBirthdayFrom, txtBirthdayTo, txtSelectSex){
	
}

