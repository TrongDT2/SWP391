
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Anti covid support</title>
        <link rel="stylesheet" href="css/myStyle.css" type="text/css" />
        <link rel="stylesheet" href="css/registration.css" type="text/css" />
    </head>
    <body>
        <div class="container" style="position: relative">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="register-container">
                    <p class="form-title">Đăng bài</p>
                    <p style="color: red; font-size: 0.8rem">* Bạn phải điền đầy đủ những mục này.</p>
                    <form id="myForm" action="PostController" method="POST" class="register-form">
                        <div class="form-group">
                            <div class="input-group width-100">
                                <label for="content"><span style="color: red">*</span>Nội Dung:</label><br/>
                                <input type="content" class="input-control input-100" id="password" name="content" maxlength="500" value="" placeholder="Nhập nội dung bài đăng"   required="true">
                                <span id="password-warning" style="color: red; font-style: italic"></span>
                            </div>
                        </div>
                        <h4>Ảnh đính kèm:</h4>
                        <p class="img-select" onclick="imgFormHandler(true)" style="cursor: pointer">Chọn hoặc đổi ảnh</p>
                        <div id="img-form" 
                             style="position: absolute;top: 0;bottom:0;left: 0;right: 0; display: none"
                             >
                            <div style="position: absolute;top: 0;bottom:0;
                                 left: 0;right: 0; background-color: #000; opacity: 0.5"></div>
                            <div style="position: absolute;top:20%; left:30%; 
                                 right: 30%; min-height: 300px; background-color: #fff;
                                 display: flex; align-items: center; 
                                 flex-direction: column; padding: 30px"
                                 >
                                <div style="width: 600px;height: 350px;overflow:hidden; 
                                     display: flex; justify-content: center; align-items: center">
                                    <img id="previewImg" src="" alt="previewImg">
                                </div>
                                <div>
                                    <label for="imgSrc" >Source:</label>
                                    <input style="width: 550px; font-size: 1rem; padding: 5px 10px;margin: 20px 10px" 
                                           type="text" 
                                           name="imgSrc" 
                                           id="imgSrc"  
                                           oninput="getImgResource()">
                                </div>
                                <div style="display: flex">
                                    <button type="button" id="accept" class="btn"
                                            onclick="imgFormHandler(false)" disabled="true">Xác nhận</button>
                                    <button type="button" id="cancel" 
                                            onclick="cancelImage(false)" 
                                            class="btn btn-danger">Hủy</button>
                                </div>
                            </div>
                        </div>
                        <input type="checkbox" id="license" name="license" value="agree" ><label for="license" style="font-weight: bold">Tôi đồng ý với các </label><a style="text-decoration: none; color: #3366ff; cursor: context-menu" onclick="formDisplayHandler('term')">điều khoản</a><br/>
                        <button type="submit" id="btn-submit" class="btn-success btn-rounded btn-long">Đăng ký</button>
                        <input type="hidden" name="regSubmit" value="submit" />
                    </form>
                </div>
            </div>
            <jsp:include page="Footer.jsp"/>
            <div id="term" class="overlay-form">
                <div class="overlay" style="background-color: #000; opacity: 0.5;"></div>
                <div class="text-form" style="position: absolute;background-color: #fff; top:5%; bottom: 35%; left: 30%; right: 30%; border-radius: 7px; box-shadow: 0 0 10px gray; border: 1px double black">
                    <p style="float: left; margin: 8px">Điều khoản & chính sách:</p>
                    <button type="button" style="float: right; margin: 5px" onclick="formDisplayHandler('term')">X</button>
                    <hr style="margin-top: 35px;">
                    <div style="padding: 10px 80px; text-align: left">
                        <p>Không được phép đăng các thông tin sai sự thật.</p>
                        <p>Không sử dụng từ ngữ gây kích động.</p>
                        <p>Chỉ nên chia sẻ những thông tin, kinh nghiệm phòng ngừa covid hiệu quả.</p>
                        <p>Chịu hoàn toàn trách nhiệm với những bài đăng cũng như chia sẻ của mình.</p>
                    </div>
                </div>
            </div>
            <div id="my-message" class="overlay-form" style="display: none;">
                <div class="overlay" style="background-color: #000; opacity: 0.5;"></div>
                <div id="message-box">
                    <h3 id="message-title" style="margin: 40px 0;"></h3>
                    <pre id="message-content"></pre>
                    <div style="display: flex; justify-content: center">
                        <c:if test="${regStatus ne true}">
                            <button id="message-btn" class="btn-success btn-rounded" type="button" onclick="formDisplayHandler('my-message')">Đóng</button>
                        </c:if>
                        <c:if test="${regStatus eq true}">
                            <a href="/home" class="btn-success btn-rounded">Trang chủ</a>
                        </c:if>
                        <button type="button" id="cancel-confirm" 
                                onclick="cancelImage(true)" 
                                class="btn btn-danger"
                                style="display: none; border-radius: 7px">Xác nhận
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <script>
	
				function formDisplayHandler(eleId) {
					let myForm = document.getElementById(eleId);
					if (myForm.style.display === 'block') {
						myForm.style.display = 'none';
					} else {
						myForm.style.display = 'block';
					}
				}

				function cancelImage(state) {
					let imgSrc = document.getElementById("imgSrc").value;
					if (state === true || imgSrc === '') {
						document.getElementById("imgSrc").value = "";
						document.getElementById("previewImg").setAttribute("src", "");
						if (imgSrc !== '') {
							formDisplayHandler('my-message');
							document.getElementById("cancel-confirm").style.display = "none";
						}
						imgFormHandler(false);
						return;
					}
					document.getElementById("cancel-confirm").style.display = "block";
					showDialog("Xóa bỏ link ảnh?", "Ấn vào xác nhận để hủy chọn ảnh này");
				}
				function imgFormHandler(state) {
					if (state) {
						document.getElementById("img-form").style.display = "block";
					} else {
						document.getElementById("img-form").style.display = "none";
					}
				}

				function getImgResource() {
					let imgSrc = document.getElementById("imgSrc");
					let imgPreview = document.getElementById("previewImg");
					imgSrc.value = imgSrc.value.trim();
					let btn = document.getElementById("accept");
					if (imgSrc.value.length > 150) {
						btn.style.backgroundColor = "#eee";
						btn.style.color = "#000";
						showDialog("Vượt quá độ dài tối đa", "Image source chứa tối đa 150 ký tự");
						btn.disabled = true;
						imgPreview.setAttribute("src", "");
					} else {
						btn.disabled = false;
						btn.style.backgroundColor = "#198754";
						btn.style.color = "#fff"
						imgPreview.setAttribute("src", imgSrc.value);
					}
				}

				function showDialog(title, msg) {
					document.getElementById("my-message").style.display = "block";
					messBox.style.borderColor = "#eee";
					messBox.style.backgroundColor = "#eee";
					messTitle.textContent = title;
					messContent.textContent = msg;
				}
                                function validateImage() {
                                    var x = document.getElementById("imgSrc").value;  
                                       if (x == "") {
                                       showDialog("Ảnh không được để trống",
									"Các thông tin đăng ký cần phải hợp lệ.");
                                        return false;
                                    }
                                    else{
                                       return true;
                                  }
                              }
        </script>
    </body>
</html>
