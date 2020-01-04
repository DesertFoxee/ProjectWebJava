<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:template-website title="Index">
    <jsp:attribute name="content">
        <div class="so-slider">
            <div class="container">
                <div id="so-slideshow" class="col-md-offset-3 col-md-12 col-xs-12 module sohomepage-slider ">
                    <div class="modcontent">
                        <div id="sohomepage-slider1">
                            <div class="so-homeslider sohomeslider-inner-1">
                                <div class="item ">
                                    <a href="#" title="Slider 1-1" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433.jpg" />"
                                             alt="Slider 1-1" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-right text-sl11">
                                            <h3 class="tilte modtitle-sl11 ">Nikon D7100</h3>
                                            <p class="des des-sl11">Ultimate image quality. Create without
                                                limination
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item ">
                                    <a href="#" title="Slider 1-2" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433_1.jpg" />"
                                             alt="Slider 1-2" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-right text-sl12">
                                            <h3 class="tilte modtitle-sl12">OUR NEW RANGE OF</h3>
                                            <h4 class="titleh4">TABLET</h4>
                                            <p class="des des-sl11">FOR LESS THAN $99.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item ">
                                    <a href="#" title="Slider 1-3" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433_2.jpg" />"
                                             alt="Slider 1-3" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-left text-sl13">
                                            <h3 class="tilte modtitle-sl13">OUR NEW RANGE OF</h3>
                                            <h4 class="titleh4">IMACS</h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <script type="text/javascript">
                                $('body').addClass('common-home');
                                var owl = $(".sohomeslider-inner-1");
                                var total_item = 3;
                                function customCenter() {
                                    $(".owl2-item.active .item .sohomeslider-description .image ").addClass("img-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .tilte ").addClass("title-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text h4 ").addClass("h4-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .des").addClass("des-active");
                                }
                                function customPager() {
                                    $(".owl2-item.active .item .sohomeslider-description .image ").addClass("img-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .tilte ").addClass("title-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text h4 ").addClass("h4-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .des").addClass("des-active");
                                }

                                $(".sohomeslider-inner-1").owlCarousel2({
                                    animateOut: 'slideOutDown',
                                    animateIn: 'slideInDown',
                                    autoplay: false,
                                    autoplayTimeout: 5000,
                                    autoplaySpeed: 1000,
                                    smartSpeed: 500,
                                    autoplayHoverPause: true,
                                    startPosition: 0,
                                    mouseDrag: true,
                                    touchDrag: true,
                                    dots: true,
                                    autoWidth: false,
                                    dotClass: "owl2-dot",
                                    dotsClass: "owl2-dots",
                                    loop: true,
                                    navText: ["Next", "Prev"],
                                    navClass: ["owl2-prev", "owl2-next"],
                                    responsive: {
                                        0: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        480: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        768: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        992: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        1200: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        }
                                    },
                                    onInitialized: customPager,
                                    onTranslated: customCenter,
                                });
                            </script>
                        </div>
                    </div>

                    <div class="loader-mod-box"></div>
                </div>

            </div>
        </div>

        <c:set var="path_default" value="${path_default}" scope="request" />

        <div class="container">
            <div class="row">
                <jsp:include page="/WEB-INF/views/partialview/website/home/introduce.jsp"  flush="true"/>

                <c:set var="best_sale_shoes" value="${best_sale_shoes}" scope="request"/>
                <jsp:include page="/WEB-INF/views/partialview/website/home/bestsale.jsp"  flush="true"/>

            </div>
        </div>
    </div>



    <c:set var="first_shoes_price" value="${adi_shoes_price}" scope="request" />
    <c:set var="first_shoes_sale" value="${adi_shoes_sale}" scope="request" />
    <jsp:include page="/WEB-INF/views/partialview/website/home/spotlight.jsp" flush="true">
        <jsp:param name="title" value="ADIDAS"/>
        <jsp:param name="position" value="1"/>
    </jsp:include>
    
    <c:set var="first_shoes_price" value="${nike_shoes_price}" scope="request" />
    <c:set var="first_shoes_sale" value="${nike_shoes_sale}" scope="request" />
    <jsp:include page="/WEB-INF/views/partialview/website/home/spotlight.jsp" flush="true">
        <jsp:param name="title" value="NIKE"/>
        <jsp:param name="position" value="2"/>
    </jsp:include>

    <div class="so-spotlight2">
        <div class="container">
            <div class="row">
                <div class="module so-latest-blog latest-blog col-md-4 col-sm-6 col-xs-12">
                    <h3 class="modtitle"><span>CẬP NHẬT</span></h3>
                    <div id="so_latest_blog_180_10303509171575512144"
                         class="so-blog-external button-type2 button-type2">
                        <div class="blog-external-simple">
                            <div class="media">
                                <div class="item">
                                    <div class="media-body">

                                        <div class="media-date-added">28<br />
                                            <span>Mar</span></div>
                                        <div class="media-content">
                                            <h4 class="media-heading">
                                                <a href="https://snkrvn.com/bulldog-vn-sale-dong-gia-converse-1970s-ultraboost-19-nmd/"
                                                   title="Ac tincidunt Suspendisse malesuada" target="_blank">Bulldog.vn Sale đồng giá:1tr450</a>
                                            </h4>
                                            <div class="description">

                                                Converses 1970s Low Top chỉ còn 1tr450. Converse 1970s High Top nhỉnh 
                                                hơn một chút, chỉ 1tr500 ....
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media">
                                <div class="item">
                                    <div class="media-body">

                                        <div class="media-date-added">01<br />
                                            <span>Sep</span></div>
                                        <div class="media-content">
                                            <h4 class="media-heading">
                                                <a href="https://snkrvn.com/phien-ban-air-jordan-8-cream-se-duoc-phat-hanh-vao-mua-he-nam-2020/"
                                                   title="Biten demonstraverunt lector legere legunt saepius"
                                                   target="_blank">Phiên bản Air Jordan 8 “Cream” phát hành</a>
                                            </h4>
                                            <div class="description">
                                                Đội hình Jordan 2020 dự đoán sẽ gây bão cộng đồng sneaker khi mà sự ra mắt trọng đại 
                                                của....
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="module so-latest-blog latest-blog col-md-4 col-sm-6 col-xs-12">
                    <h3 class="modtitle"><span>TIN TỨC NỔI BẬT</span></h3>
                    <div id="so_latest_blog_180_10303509171575512144"
                         class="so-blog-external button-type2 button-type2">
                        <div class="blog-external-simple">
                            <div class="media">
                                <div class="item">
                                    <div class="media-body">

                                        <div class="media-date-added">28<br />
                                            <span>Mar</span></div>
                                        <div class="media-content">
                                            <h4 class="media-heading">
                                                <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=8"
                                                   title="Ac tincidunt Suspendisse malesuada" target="_blank">UltraBOOST 20 phiên bản “Điệp viên 007”</a>
                                            </h4>
                                            <div class="description">

                                                James Bond x adidas đã chính thức bắt tay nhau cho ra mắt phiên bản collab James Bond ...
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media">
                                <div class="item">
                                    <div class="media-body">

                                        <div class="media-date-added">01<br />
                                            <span>Sep</span></div>
                                        <div class="media-content">
                                            <h4 class="media-heading">
                                                <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=2"
                                                   title="Biten demonstraverunt lector legere legunt saepius"
                                                   target="_blank">Russell Westbrook tôn vinh gia đình của anh ấy
                                                </a>
                                            </h4>
                                            <div class="description">
                                                Chắc chắn phải mất rất nhiều thời gian & công sức luyện tập để biến Russell Westbrook 
                                                trở thành ...
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="module testimonial col-md-4 col-sm-12">
                    <div class="clients_say">
                        <div class="block-title">
                            <h3>Ý KIẾN KHÁCH HÀNG</h3>
                        </div>
                        <div class="owl-carousel slider-clients-say" style="border-bottom: 1px solid #cacaca;">
                            <c:forEach var="review" items="${reviews}"> 
                                <div class="block_content">
                                    <div class="image"><img src="<c:url value="/resources/images/common/jpg/unknown.jpg"/>" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">${review.noiDung}</div>
                                        <div class="info">
                                            <div class="author" style="float: right;">${review.khachHang.tenKhachHang}</div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</jsp:attribute>
</t:template-website>
