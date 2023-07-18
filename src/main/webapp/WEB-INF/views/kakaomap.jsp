<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>마커 생성하기</title>
</head>
<body>
<div id="map" style="width:50%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0ef0ff6e3707a9cb13dbf179e5b7479e"></script>
<script>
    var mapContainer = document.getElementById('map'); // 지도를 표시할 div
    var mapOption = {
        center: new kakao.maps.LatLng(34.864589, 127.346673), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 마커가 표시될 위치입니다
    var markerPosition = new kakao.maps.LatLng(34.864589, 127.346673);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition,
        clickable: true
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);


    var iwContent = '<div style="padding:5px;">한국폴리테크 마커누르면 길찾기 api blank로 열립니다.</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    var iwRemoveable = true; // removable 속성을 true로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: iwContent,
        removable: iwRemoveable
    });

    // 마커에 마우스 호버 이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'mouseover', function () {
        // 마커 위에 인포윈도우를 표시합니다
        infowindow.open(map, marker);
    });

    // 마커에서 마우스 호버가 벗어날 때 인포윈도우를 닫습니다
    kakao.maps.event.addListener(marker, 'mouseout', function () {
        infowindow.close();
    });

    // 마커에 클릭 이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function () {
        var kakaoMapsUrl = 'https://map.kakao.com/link/to/보성 폴리텍,34.864589,127.346673';

        // 새 창으로 카카오 길찾기 페이지 열기
        window.open(kakaoMapsUrl, '_blank');
    });
</script>
</body>
</html>
