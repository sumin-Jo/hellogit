<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<%@ include file="../assets/inc/meta.jsp"%>
<title>방주인 방등록</title>
 
<!-- header, footer, ho_rmli css 참조 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/ho_css/rm_add.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugin/datepicker/datepicker.min.css"/>

<style>
/* 헤더 nav css */
.header-nav { background-color: rgb(81, 136, 244); }
</style> 
</head>

<body>
<div id="root">
    <div class="box">
    <!-- header 시작 -->
        <%@ include file="../assets/inc/ho_header.jsp"%>
    <!-- header 끝 -->
    <!-- content 시작 -->
    <div id="content">
        <div class="sell_room_box">
            <h1 class="sell_room">공실 등록하기</h1>
        </div>
        <ul class="sell_info_box">
            <li>등록한 매물은 30일 동안 노출됩니다.</li>
            <li>좋아요를 많이 받은 방은 인기매물에 등록됩니다.</li>
        </ul>
        <!-- 매물종류 --> 
        <div class="tableframe" name="roomType">
            <h1>매물 종류</h1>
                <table>
                    <tbody>
                        <tr>
                            <th>종류 선택</th>
                            <td class="bang_choice">
                                <label class="Square_box"><input type="radio" name="room_type" >
                                    <p>원룸</p>
                                </label>
                                <label class="Square_box"><input type="radio" name="room_type" checked />
                                    <p>투룸</p>
                                </label>
                                <label class="Square_box"><input type="radio" name="room_type">
                                    <p>쓰리룸</p>
                                </label>
                                <label class="Square_box"><input type="radio" class="ab" name="room_type">
                                    <p>오피스텔(도시형)</p>
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <th>건물 유형</th>
                            <td class="bang_choice">
                                <label class="Square_box"><input type="radio" name="building_type">
                                    <p>단독주택</p>
                                </label>
                                <label class="Square_box"><input type="radio" name="building_type">
                                    <p>다가구주택</p>
                                </label>
                                <label class="Square_box"><input type="radio" name="building_type">
                                    <p>빌라/연립/다세대</p>
                                </label>
                                <label class="Square_box"><input type="radio" class="ab1" name="building_type">
                                    <p>오피스텔</p>
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div> <!-- sell_room_box 끝 -->
                <!-- 위치정보 -->
                <div class="tableframe" name="location">
                    <h1>위치 정보<span>*등기부등본 상의 주소를 입력해 주세요.</span></h1>
                <table>
                    <tbody>
                        <tr>
                            <th>주소</th>
                            <td class="loc_box_pd">
                                <div class="loc_box">
                                    <p class="loc_p_t">
                                        <span class="glyphicon glyphicon-exclamation-sign"></span>
                                        <span>도로명, 건물명, 지번에 대해 통합검색이 가능합니다.</span>
                                    </p>
                                    <form class="loc_div">
                                        <input type="text" class="address1" placeholder=" 주소" readonly>
                                        <input type="button" class="address2" onclick="sample5_execDaumPostcode()" value="주소 검색">
                                    </form>
                                    <div class="loc_de">
                                        <input type="text" style="border:none"  id="point_address" placeholder="" readonly>
                                    </div>
                                    <div class="dongho_div">
                                        <div class="dong"><input type="text" class="dongho input_box" name="dong" placeholder="예)101동" value=""></div>
                                        <div class="ho"><input type="text" class="dongho input_box" name="ho" placeholder="예)201호" value=""></div>
                                    </div>
                                    <div class="loc_check">
                                        <label class="loc_check_box" size="22"><input type="checkbox" class=" PcMeW" name="is_noinfo_dong" value="">
                                        <span class="CheckBox"></span>
                                            <span class="ch_box_text">등본에 동정보가 없는 경우 선택해 주세요.</span>
                                        </label>
                                    </div>
                                </div>
                                <div id="box" class="map_box" style="display:none"></div>
                                <div id="pon_box" class="map_box">
                                    <div class="map_box1">
                                        <span class="glyphicon glyphicon-map-marker"></span>
                                    </div>
                                    <p class="map_text">주소 검색을 하시면</p>
                                    <p class="map_text">해당 위치가 지도에 표시됩니다.</p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- 거래정보 -->
                <div class="tableframe" name="dealType">
                    <h1>거래 정보</h1>
                <table>
                    <tbody>
                        <tr class="hide_box removing">
                        <th rowspan="2">거래 종류</th>
                        <td class="deal77"></td>
                        </tr>
                        <tr>
                            <td class="deal_box_pd">
                                <button type='button' class='deal_btn'>월세</button>
                                <button type='button' class='deal_btn1'>전세</button>
                                <button type='button' class='deal_btn2'>매매</button>
                                <div class="short">
                                    <label class="deal_check_box" size="22"><input type="checkbox" class="PcMeW" name="short_lease" value=""><span class="CheckBox"></span>
                                        <span class="deal_text">단기가능</span>
                                    </label>
                                <p class="deal_text1">
                                    <span class="glyphicon glyphicon-exclamation-sign"></span>
                                    <span>처음에 선택한 거래 종류가 우선노출됩니다.</span>
                                </p>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                <!-- 기본정보 -->
                <div class="tableframe" name="baseInfo">
                    <h1>기본 정보</h1>
                <table>
                    <tbody>
                        <tr>
                        <th rowspan="2">
                            <p>건물 크기</p>
                            <span>(1P = 3.3058㎡)</span>
                        </th>
                            <td class="base_line">
                                <p class="base_title">공급 면적</p>
                                <input type="text" id="pyeong1" class="base_pd input_box" onkeyup="calculator(1);">
                                <p class="base_kiho">평</p>
                                <input type="text" id="pyeong2" class="base_pd input_box" onkeyup="calculator(2);">
                                <p class="base_kiho">㎡</p>
                            </td>
                            <th rowspan="2">건물 층수</th>
                            <td class="base_line">
                                <p class="base_title">건물 층수</p>
                                <select class="floor1 hRFrgm" name="building_floor">
                                    <option value="">건물 층수 선택</option>
                                    <option value="1">1층</option>
                                    <option value="2">2층</option>
                                    <option value="3">3층</option>
                                    <option value="4">4층</option>
                                    <option value="5">5층</option>
                                    <option value="6">6층</option>
                                    <option value="7">7층</option>
                                    <option value="8">8층</option>
                                    <option value="9">9층</option>
                                    <option value="10">10층</option>
                                    <option value="11">11층</option>
                                    <option value="12">12층</option>
                                    <option value="13">13층</option>
                                    <option value="14">14층</option>
                                    <option value="15">15층</option>
                                    <option value="16">16층</option>
                                    <option value="17">17층</option>
                                    <option value="18">18층</option>
                                    <option value="19">19층</option>
                                    <option value="20">20층</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="base_line">
                                <p class="base_title">전용 면적</p>
                                <input type="text" id="ator1" class="base_pd input_box" onkeyup="ator(1);">
                                <p class=" base_kiho">평</p>
                                <input type="text" id="ator2" class="base_pd input_box" onkeyup="ator(2);">
                                <p class="base_kiho">㎡</p>
                            </td>
                            <td class="base_line">
                                <p class=" base_title">해당 층수</p>
                                <select class="floor1 hRFrgm" name="room_floor">
                                    <option value="">해당 층수 선택</option>
                                    <option value="-1">반지층</option>
                                    <option value="0">옥탑</option>
                                    <option value="1">1층</option>
                                    <option value="2">2층</option>
                                    <option value="3">3층</option>
                                    <option value="4">4층</option>
                                    <option value="5">5층</option>
                                    <option value="6">6층</option>
                                    <option value="7">7층</option>
                                    <option value="8">8층</option>
                                    <option value="9">9층</option>
                                    <option value="10">10층</option>
                                    <option value="11">11층</option>
                                    <option value="12">12층</option>
                                    <option value="13">13층</option>
                                    <option value="14">14층</option>
                                    <option value="15">15층</option>
                                    <option value="16">16층</option>
                                    <option value="17">17층</option>
                                    <option value="18">18층</option>
                                    <option value="19">19층</option>
                                    <option value="20">20층</option>
                                 </select>
                            </td>
                        </tr>
                        <tr>
                            <th>난방 종류</th>
                            <td class="base_line" colspan="3">
                                <select class="heating hRFrgm" name="heating_type">
                                    <option value="">난방 종류 선택</option>
                                    <option value="0">중앙 난방</option>
                                    <option value="1">개별 난방</option>
                                    <option value="2">지역 난방</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>입주 가능일</th>
                            <td class="base_line" colspan="3">
                             <label class="in_date"><input type="radio" name="datetime">
                            <p>즉시 입주</p>
                            </label>
                            <label class="in_date"><input type="radio" name="datetime">
                            <p>날짜 협의</p>
                            </label>
                            <label class="in_date"><input type="radio" id="cal" name="datetime">
                            <p>날짜 선택</p>
                            </label>
                            <input type="text" id="datepicker" readonly />
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
            </tr>
        </tbody>
        <!-- 추가정보 -->
        <div class="tableframe" name="additional">
            <h1>추가정보</h1>
        <table>
            <tbody>
                <tr>
                    <th rowspan="2">관리비</th>
                    <td class="add_info" colspan="3">
                        <input type="text" id="main_pr_v1" name="main_pr_v1" disabled="" class="add2 input_box">
                        <p class="add3">만원</p>
                        <div class="main">
                        <label class="add_check_box" size="22"><input type="checkbox" id="main_input" name="main_input" value="main_input" class="PcMeW" checked="">
                        <span class="CheckBox"></span>
                        <span class="add_text">관리비 없음</span>
                        </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="add_info" colspan="3">
                        <div class="add_m">
                            <p>관리비항목</p>
                            <p>(다중선택가능)</p>
                        </div>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>인터넷</p>
                        </label>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>유선TV</p>
                        </label>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>청소비</p>
                        </label>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>수도세</p>
                        </label>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>도시가스</p>
                        </label>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>전기세</p>
                        </label>
                        <label class="ma_box  ma_m">
                            <input type="checkbox" id="user_input" name="user_input" value="user_input" >
                            <p>기타</p>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>주차여부</th>
                    <td class="add_info">
                        <label class="add1 Square_box">
                            <input type="radio" name="parking" checked="" onclick="btnn1_off();">
                            <p>불가능</p>
                        </label>
                        <label class="add1 Square_box">
                            <input type="radio" name="parking" onclick="btnn1_on();">
                            <p>가능</p>
                        </label>
                        <input type="text" id="btnn1" class="add2 input_box" name="parking_cost" disabled="" value="">
                        <p class="add3">만원</p>
                    </td>
                    <th>반려동물</th>
                    <td class="add_info">
                        <label class="add1 Square_box"><input type="radio" name="pet" checked="">
                            <p>가능</p>
                        </label>
                        <label class="add1 Square_box"><input type="radio" name="pet">
                            <p>불가능</p>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>엘리베이터</th>
                    <td class="add_info">
                        <label class="add1 Square_box"><input type="radio" name="elevator" checked="">
                            <p>없음</p>
                        </label>
                        <label class="add1 Square_box"><input type="radio" name="elevator">
                            <p>있음</p>
                        </label>
                    </td>
                    <th>베란다/발코니</th>
                    <td class="add_info">
                        <label class="add1 Square_box"><input type="radio" name="balcony" checked="">
                            <p>없음</p>
                        </label>
                        <label class="add1 Square_box"><input type="radio" name="balcony">
                            <p>있음</p>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>빌트인</th>
                    <td class="add_info" colspan="1">
                        <label class="add1 Square_box"><input type="radio" name="built_in" checked="">
                            <p>없음</p>
                        </label>
                        <label class="add1 Square_box"><input type="radio" name="built_in">
                            <p>있음</p>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>옵션항목</th>
                    <td class="add_info" colspan="3">
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>에어컨</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>세탁기</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>침대</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>책상</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>옷장</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>TV</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>신발장</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>냉장고</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>가스레인지</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>인덕션</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>전자레인지</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>전자도어락</p>
                        </label>
                        <label class="ma_box ma_m">
                            <input type="checkbox" name="room_options">
                            <p>비데</p>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>전세자금대출</th>
                    <td class="add_info" colspan="3">
                        <label class="add1 Square_box"><input type="radio" name="loan" checked="">
                            <p>불가능</p>
                        </label>
                        <label class="add1 Square_box"><input type="radio" name="loan">
                            <p>가능</p>
                        </label>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
        <!-- 상세설명 -->
        <div class="tableframe" name="detailInfo">
            <h1>상세 설명</h1>
        <table>
            <tbody>
                <tr>
                    <th>제목</th>
                    <td class="detail_box"><input type="text" class="detail_box1 input_box" name="title" placeholder="예)신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다." value=""></td>
                </tr>
                <tr>
                    <th>상세 설명</th>
                    <td class="detail_box">
                        <textarea class="detail_des" style="resize: none;" name="memo" placeholder="

 ※상세설명 작성 주의사항
                                
- 방 정보와 관련없는 홍보성 정보는 입력하실 수 없습니다. (홈페이지 주소, 블로그, SNS, 메신저ID, 전화번호, 이메일 등)
- 중개수수료를 언급한 내용은 입력할 수 없습니다. (중개수수료 무료, 꽁짜, 반값 등)

* 주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 있을 수 있습니다.
* 다방의 매물등록 규정에 위반되는 금칙어는 등록이 불가합니다."></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
        <!-- 사진등록 -->
        <div class="photo_frame" name="photo">
            <h1>사진 등록</h1>
        <div class="photo_box">
            <div class="photo_btn">
                <button class="photo_btn1" disabled>일반사진</button>
            </div>
            <div class="pic_info">
                <p>- 사진은 가로로 찍은 사진을 권장합니다. (가로 사이즈 최소 800px)</p>
                <p>- 사진 용량은 사진 한 장당 10MB 까지 등록이 가능합니다.</p>
            </div>
            <div class="photo_info">
                <div class="photo_pic2">
                    <span class="glyphicon glyphicon-picture"></span>
                    <p class="pic_tell">실 사진 최소 3장 이상 등록하셔야 하며, 가로 사진을 권장합니다.</p>
                </div>
            <div class="filebox">
                <form method="post" action="..." enctype="multipart/form-data">
                    <label for="ex_file">사진등록</label>
                    <input type="file" id="ex_file" accept=".jpg,.jpeg,.png" maxlength="15"/></form></div>
            </div>
                <p class="warning_text">
                    <span class="glyphicon glyphicon-exclamation-sign"></span>
                    <span>허위 매물을 등록할 경우 다방에서 임의로 계정 및 매물 전체 삭제 처리됩니다.</span>
                    <a href="#" target="_blank" rel="noopener noreferrer">허위매물 제재 정책 확인하기</a>
                </p>
            </div>
        </div>
        <!-- lowbox -->
        <div class="low_box">
            <label class="low_text low_check_box" size="22">
                <input type="checkbox" class="PcMeW" name="isAgree" value="">
                <span class="CheckBox"></span>
                <span class="low_text1">매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</span>
            </label>
            <button type="button" class="low_btn1" onclick="location.href='${pageContext.request.contextPath}/host/rmli.do'">취소</button>
            <button type="button" class="low_btn2" onclick="location.href='${pageContext.request.contextPath}/host/rmli.do'">매물등록</button>
        </div>
</div><!-- content끝 -->

<!-- footer 시작 -->
    <!-- 하단 영역 -->
    <div id="footer">
        <%@ include file="../assets/inc/ho_footer.jsp"%>
    </div><!-- footer 끝 -->
</div> <!-- box 끝 -->
</div> <!-- root 끝 -->
          
           
<!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<!-- 카카오 지도 시작-->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c2af26a361b5d6ffd94b478877c3ee14&libraries=services"></script>
    <script>
        var mapContainer = document.getElementById('box'), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
    
        //지도를 미리 생성
        var map = new daum.maps.Map(mapContainer, mapOption);
        //주소-좌표 변환 객체를 생성
        var geocoder = new daum.maps.services.Geocoder();
        //마커를 미리 생성
        var marker = new daum.maps.Marker({
            position: new daum.maps.LatLng(37.537187, 127.005476),
            map: map
        });
    
    
        function sample5_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = data.address; // 최종 주소 변수
    
                // 주소 정보를 해당 필드에 넣는다.
                <!--document.getElementById("sample5_address").value = addr;-->
                document.getElementById("point_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
    
                        var result = results[0]; //첫번째 결과의 값을 활용
    
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 기존에 있던 박스를 숨긴다.
                        $("#pon_box").css("display", "none")
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                    // 마커를 결과값으로 받은 위치로 옮긴다.
                    marker.setPosition(coords)
                } // if 끝
            }); // document 끝
        } // oncomplete 끝
    }).open();
}
</script>
<!-- 카카오 지도 끝 -->

<!-- datepicker 시작 -->
    <script src="${pageContext.request.contextPath}/assets/plugin/datepicker/datepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugin/datepicker/i18n/datepicker.ko-KR.js"></script>
    <script>
        $(function() {
            $("#datepicker").datepicker({
                showOn: "both",
                autoHide: true,         // 날짜 선택 후 자동 숨김 (true/false)
                format: 'yyyy-mm-dd',   // 날짜 형식
                language: 'ko-KR',      // 언어
                weekStart: 0,            // 시작요일(0=일요일~6=토요일)
                trigger:'#cal'     // 클릭시 달력을 표시할 요소의 id
            });
        });
    </script>   
<!-- datepicker 끝 --> 

<!-- 동정보 위치이동 시작 -->    
<script>
/* 동정보 체크박스 -> 동 삭제 */
$(function() {
   $(".loc_check > label").click(function(e) {
      var check_dong = $(".loc_check .PcMeW").prop("checked");
      if (check_dong) {
         $(".dong").css("display", "none");
      } else {
         $(".dong").css("display", "block");
      }
   });
});
</script>
<!-- 동정보 위치이동 끝 --> 

<!-- 공급면적 평수 계산기 -->
<script>
    function calculator(chk){
        if(chk==1){  
            document.getElementById('pyeong2').value = parseFloat((document.getElementById('pyeong1').value) * 3.3058).toFixed(2);
        }
        else { 
            document.getElementById('pyeong1').value = parseInt((document.getElementById('pyeong2').value) / 3.3058);
        }
    }
</script>
<!-- 평수 계산기 -->

<!-- 전용면적 평수 계산기 -->
<script>
    function ator(chk){
        if(chk==1){ 
            document.getElementById('ator2').value = parseFloat((document.getElementById('ator1').value) * 3.3058).toFixed(2);
        }
         else { 
            document.getElementById('ator1').value = parseInt((document.getElementById('ator2').value) / 3.3058);
        }
    }
</script>
<!-- 평수 계산기 끝-->

<script>
    var btnn1;
    //버튼활성화
    function btnn1_on() {
        btnn1 = document.getElementById('btnn1');
        btnn1.disabled = false;
    }
     
    //버튼비활성화
    function btnn1_off() {
        btnn1 = document.getElementById('btnn1');
        btnn1.disabled = 'true';
    }
</script>
<script>
// 오피스텔 선택시 자동선택
    $( document ).ready( function() {
        $( '.ab' ).click( function() {
        $( '.ab1' ).prop( 'checked', this.checked );
        });
    });
</script>
    
<script>
// 관리비 
    $("input#main_input").click(function() {
        if ($("#main_input:checked").val() == "main_input") // 비활성화
        {
            $("input#main_pr_v1").attr("disabled", true); 
        }
        else // 활성화
        {
            $("input#main_pr_v1").removeAttr("disabled");
        }   
    });
</script>

<script>
    // 관리비 옵션
    $("input#user_input").click(function() {
        if ($("#user_input:checked").val() == "user_input") // 비활성화
        {
            $("input#main_pr_v1").removeAttr("disabled");
            $("input#main_input").removeAttr("checked");
        }
        else // 활성화
        {
            $("input#main_pr_v1").attr("disabled", true); 
            $("input#main_input").attr("checked", true); 
        }   
    });
</script>
<!-- 월세, 전세, 매매 버튼 활성화 -->
<script>
    $(function() {
        // 월세 버튼
        $(document).on("click", ".deal_btn", function() {
            var ad = '<div class="d_div"><p class="bbtn">월세</p><input class="d_input_box1 d_input_box2" type="text" name="보증금"><p class="midle_box">/</p><input class="d_input_box1 d_input_box2" type="text" name="월세"><p class="dp_text">만원<span>(예 월세 1000만원/50만원)</span><span class="glyphicon glyphicon-remove pp"></span></p></div>';
            $(".deal77").append(ad);
        });

        // 전세 버튼
        $(document).on("click", ".deal_btn1", function() {
            var bc = '<div class="d_div1"><p class="bbtn">전세</p><input class="d_input_box1 d_input_box2" type="text" name="전세"><p class="dp_text">만원<span>(예 전세 2000만원)</span><span class="glyphicon glyphicon-remove pp1"></span></p></div>';
            $(".deal77").append(bc);
            $(".deal_btn1").attr("disabled", true);
        });
        // 매매 버튼
        $(document).on("click", ".deal_btn2", function() {
            var cd = '<div class="d_div2"><p class="bbtn">매매</p><input class="d_input_box1 d_input_box2" type="text" name="전세"><p class="dp_text">만원<span>(예 매매 10000만원)</span><span class="glyphicon glyphicon-remove pp2"></span></p></div>';
            $(".deal77").append(cd);
            $(".deal_btn2").attr("disabled", true);
        });
        // 월세 버튼
        $(document).on("click", ".pp", function() {
            // 클릭된 버튼 상위요소인 `.item`찾아서 제거한다.
            $(this).parents('.d_div').remove();
        });

        // 전세 버튼            
        $(document).on("click", ".pp1", function() {
            // 클릭된 버튼 상위요소인 `.item`찾아서 제거한다.
            $(this).parents('.d_div1').remove();
            $(".deal_btn1").removeAttr("disabled");
        });
        // 매매 버튼            
        $(document).on("click", ".pp2", function() {
            // 클릭된 버튼 상위요소인 `.item`찾아서 제거한다.
            $(this).parents('.d_div2').remove();
            $(".deal_btn2").removeAttr("disabled");
        });
    });
</script>
</body>
</html>