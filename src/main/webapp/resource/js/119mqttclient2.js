$(function() {
	client = new Paho.MQTT.Client(location.hostname, 61614, new Date().getTime().toString());

	client.onMessageArrived = onMessageArrived;

	client.connect({onSuccess:onConnect});
});

function onConnect() {
  console.log("119 onConnect");
  client.subscribe("/sendPossible");
  
  message = new Paho.MQTT.Message("Hello");
  message.destinationName = "/giveMeSendPossible";
  client.send(message);
  console.log("message send : /giveMeSendPossible");
}

var sendFlag;

function onMessageArrived(message) {
	console.log("119 arrived");
	if(message.destinationName == "/sendPossible") {
		target = JSON.parse(message.payloadString);
		console.log("message arrived : sendPossible");
		console.log(target);
		if(target.value == "No Send") {
			sendFlag = false;
		}else if(target.value == "Yes Send") {
			sendFlag = true;
		}
	}
}

/* 119에서 데이터를 보내는 것  */
function sendPatientInformation() {
	/*병원한테 그만보내라는 메시지가 오면 보낼 수 없다는 알림이 떠야함, 보내도 된다는 메시지가 오면 보내지게 해야함*/
	console.log("클릭했어요 ! / sendFlag: " + sendFlag);
	if(sendFlag) {
		var patientReportTime = $("#patientReportTime").val();
		var patientReportTel = $("#patientReportTel").val();
		var patientLocation = $("#patientLocation").val();
		var patientName = $("#patientName").val();
		var patientSymptom = $("#patientSymptom").val();
		var patientSex = $("#patientSex").val();
		var patientAge = $("#patientAge").val();
		var patientBloodType = $("#patientBloodType").val();
		var target = {
				patientReportTime : patientReportTime,
				patientReportTel : patientReportTel,
				patientLocation : patientLocation,
				patientName : patientName,
				patientSymptom : patientSymptom,
				patientSex : patientSex,
				patientAge : patientAge,
				patientBloodType : patientBloodType
		}
		message = new Paho.MQTT.Message(JSON.stringify(target));
	    message.destinationName = "/patientINFO";
	    client.send(message);
	    console.log("119 patientINFOSend!");
	}else {
		window.alert("보낼 수 없습니다.");
	}

}
