function memberInfoFormCheckData() {
	//이는 폼 데이터를 유효성 검사하거나 기본 동작이 일어나기 전에 사용자 정의 작업을 수행하는 데 유용합니다.
	event.preventDefault(); 

	// 각 입력 양식의 데이터 검사
	var totalResult = true;
	
	//오른쪽의 결과에 따라 totalResult의 결과가 달라진다.
	totalResult &= isRightID();
	totalResult &= isRightPassword();
	totalResult &= isRightPasswordCheck();
	totalResult &= isRightName();
	totalResult &= isRightNormalPhone();
	totalResult &= isRightCellPhone();
	totalResult &= isRightEmail();
	

	
	if (totalResult) {
		//#memberInfoForm 요소를 선택하고 이를 elForm 변수에 할당합니다.
		var elForm = $("#memberInfoForm");

		//선택한 폼 요소의 첫 번째 요소를 통해 폼을 수동으로 제출합니다.
		elForm[0].submit();
	}

}

function isRightID() {
	var result = true;

	//ID 검사	
	var mid = $("#mid");
	// .val()는 jQuery에서 사용되는 메서드로, 선택한 요소의 값을 반환
	var midValue = mid.val();

	var midPattern = /^(?=.*\d)(?=.*[A-Za-z]).{6,20}$/;
	var midResult = midPattern.test(midValue);
	var midSpan = $("#midSpan");

	if (!midResult) {
		mid.addClass("border-danger");
		midSpan.addClass("text-danger");
		result = false;
	} else {
		mid.removeClass("border-danger");
		midSpan.removeClass("text-danger");
	}
	
	return result;
}

function isRightPassword() {
	var result = true;

	//password 검사
	var mpassword = $("#mpassword");
	var mpasswordValue = mpassword.val();
	var mpasswordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
	var mpasswordResult = mpasswordPattern.test(mpasswordValue);
	var mpasswordSpan = $("#mpasswordSpan");

	if (!mpasswordResult) {
		mpassword.addClass("border-danger");
		mpasswordSpan.addClass("text-danger");
		result = false;
	} else {
		mpassword.removeClass("border-danger");
		mpasswordSpan.removeClass("text-danger");
	}

	return result;
}

function isRightPasswordCheck(){
	var result = true;
	
	//passwordCheck 검사
	var mpassword = $("#mpassword");
	var mpasswordValue = mpassword.val();
	var mpasswordCheck = $("#mpasswordCheck");
	var mpasswordCheckValue = mpasswordCheck.val();
	var mpasswordCheckSpan = $("#mpasswordCheckSpan");

	if (mpasswordCheckValue !== mpasswordValue || mpasswordValue === "") {
		mpasswordCheckSpan.html("비밀번호가 맞지 않습니다.");
		mpasswordCheck.addClass("border-danger");
		mpasswordCheckSpan.addClass("text-danger");
		result = false;
	} else {
		mpasswordCheckSpan.html("&nbsp;");
		mpasswordCheck.removeClass("border-danger");
		mpasswordCheckSpan.removeClass("text-danger");
	}
	return result;
}

function isRightName() {
	var result = true;

	//한국이름 검사 
	var name = $("#mname");
	var nameValue = name.val();
	var namePattern = /^[가-힣]{2,4}$/;
	var nameResult = namePattern.test(nameValue);
	var nameSpan = $("#nameSpan");

	if (!nameResult) {
		nameSpan.html("잘못된 형식의 이름입니다.");
		name.addClass("border-danger");
		nameSpan.addClass("text-danger");
		result = false;
	} else {
		nameSpan.html("&nbsp;");
		name.removeClass("border-danger");
		nameSpan.removeClass("text-danger");
	}

	return result;
}

function isRightNormalPhone() {
	var result = true;

	//phone 검사 	
	var normalPhone2 = $("#mtel2");
	var normalPhone3 = $("#mtel3");
	var normalPhoneValue = normalPhone2.val() + "-" + normalPhone3.val();
	var normalPhonePattern = /^\d{3}-\d{4}$/;
	var normalPhoneResult = normalPhonePattern.test(normalPhoneValue);
	var normalPhoneSpan = $("#mtelSpan");
	
	if(normalPhone2.val() === "" && normalPhone3.val() === ""){
		normalPhoneSpan.html("&nbsp;");
		normalPhone2.removeClass("border-danger");
		normalPhone3.removeClass("border-danger");
		normalPhoneSpan.removeClass("text-danger");
		return true;
	}

	if (!normalPhoneResult) {
		normalPhoneSpan.html("일반전화번호가 정확한지 확인해 주세요.");
		normalPhone2.addClass("border-danger");
		normalPhone3.addClass("border-danger");
		normalPhoneSpan.addClass("text-danger");
		result = false;
	} else {
		normalPhoneSpan.html("&nbsp;");
		normalPhone2.removeClass("border-danger");
		normalPhone3.removeClass("border-danger");
		normalPhoneSpan.removeClass("text-danger");
	}
	return result;
}

function isRightCellPhone() {
	var result = true;

	//phone 검사 	
	var cellPhone2 = $("#mphone2");
	var cellPhone3 = $("#mphone3");
	var cellPhoneValue = cellPhone2.val() + "-" + cellPhone3.val();
	var cellPhonePattern = /^\d{3,4}-\d{4}$/;
	var cellPhoneResult = cellPhonePattern.test(cellPhoneValue);
	var cellPhoneSpan = $("#mphoneSpan");

	if (!cellPhoneResult) {
		cellPhoneSpan.html("휴대전화번호가 정확한지 확인해 주세요.");
		cellPhone2.addClass("border-danger");
		cellPhone3.addClass("border-danger");
		cellPhoneSpan.addClass("text-danger");
		result = false;
	} else {
		cellPhoneSpan.html("&nbsp;");
		cellPhone2.removeClass("border-danger");
		cellPhone3.removeClass("border-danger");
		cellPhoneSpan.removeClass("text-danger");
	}
	return result;
}

function isRightEmail() {
	var result = true;

	//email 검사
	var email = $("#memail");
	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	var emailResult = emailPattern.test(email.val());
	var emailSpan = $("#memailSpan");

	if (!emailResult) {
		emailSpan.html("잘못된 이메일입니다.");
		email.addClass("border-danger");
		emailSpan.addClass("text-danger");
		result = false;
	} else {
		emailSpan.html("&nbsp;");
		email.removeClass("border-danger");
		emailSpan.removeClass("text-danger");
	}
	return result;
}

