<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet"href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
	<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.0.1/mqttws31.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/119mqttclient2.js"></script>
</head>

<body>
	<h5 class="alert alert-info">/119view/main.jsp</h5>
	
	<div>
		<p style="display:inline-block;">patientReportTime: </p><input id="patientReportTime" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientReportTel: </p><input id="patientReportTel" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientLocation: </p><input id="patientLocation" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientName: </p><input id="patientName" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientSymptom: </p><input id="patientSymptom" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientSex: </p><input id="patientSex" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientAge: </p><input id="patientAge" type="text" size="30"/><br/>
		<p style="display:inline-block;">patientBloodType: </p><input id="patientBloodType" type="text" size="30"/><br/>
		<a onclick="sendPatientInformation()" class="btn btn-success">보내기</a>
	</div>
</body>
</html>