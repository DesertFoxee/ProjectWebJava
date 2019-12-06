<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Single">
    <jsp:attribute name="content">
        <div class="container product-detail">
            <ul class="breadcrumb">
                <li><a href="<c:url value ="/"/>">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/account">Tài khoản</a>
                </li>
                <li><a href="<c:url value ="/customer/register"/>"> Đăng ký</a>
                </li>
            </ul>
            <div class="row">
                <div id="content" class="col-sm-12">

                    <div class="row product-view clearfix">
                        <div class="left-content-product col-xs-12">
                            <div class="row">

                                <div class="content-product-left  col-md-6 col-xs-12 ">
                                    <div id="thumb-slider" class="thumb-vertical-outer">
                                        <div id="thumb-slider-next" class="slider-btn lSNext"><i
                                                class="fa fa-chevron-up"></i></div>
                                        <ul class="thumb-vertical previews-list ">
                                            <li class="owl2-item">
                                                <a data-index="0" class="img thumbnail"
                                                   data-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-1000x1000.PNG"
                                                   title="Duidem rerum facilis">
                                                    <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-460x460.PNG"
                                                         title="Duidem rerum facilis" alt="Duidem rerum facilis" />
                                                </a>
                                            </li>
                                            <li class="owl2-item">
                                                <a data-index="1" class="img thumbnail"
                                                   data-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-1000x1000.jpg"
                                                   title="Duidem rerum facilis">
                                                    <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-460x460.jpg"
                                                         title="Duidem rerum facilis" alt="Duidem rerum facilis" />
                                                </a>
                                            </li>
                                            <li class="owl2-item">
                                                <a data-index="2" class="img thumbnail"
                                                   data-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/4-1000x1000.png"
                                                   title="Duidem rerum facilis">
                                                    <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/4-460x460.png"
                                                         title="Duidem rerum facilis" alt="Duidem rerum facilis" />
                                                </a>
                                            </li>
                                            <li class="owl2-item">
                                                <a data-index="3" class="img thumbnail"
                                                   data-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/b12-1000x1000.jpg"
                                                   title="Duidem rerum facilis">
                                                    <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/b12-460x460.jpg"
                                                         title="Duidem rerum facilis" alt="Duidem rerum facilis" />
                                                </a>
                                            </li>
                                            <li class="owl2-item">
                                                <a data-index="4" class="img thumbnail"
                                                   data-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/W8-1000x1000.jpg"
                                                   title="Duidem rerum facilis">
                                                    <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/W8-460x460.jpg"
                                                         title="Duidem rerum facilis" alt="Duidem rerum facilis" />
                                                </a>
                                            </li>
                                            <li class="owl2-item">
                                                <a data-index="5" class="img thumbnail"
                                                   data-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/37-1000x1000.jpg"
                                                   title="Duidem rerum facilis">
                                                    <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/37-460x460.jpg"
                                                         title="Duidem rerum facilis" alt="Duidem rerum facilis" />
                                                </a>
                                            </li>

                                        </ul>
                                        <div id="thumb-slider-prev" class="slider-btn lSPrev"><i
                                                class="fa fa-chevron-down"></i></div>
                                    </div>

                                    <div class="large-image  vertical  ">
                                        <img itemprop="image" class="product-image-zoom"
                                             src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-1000x1000.PNG"
                                             data-zoom-image="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-1000x1000.PNG"
                                             title="Duidem rerum facilis" alt="Duidem rerum facilis" />

                                        <!--New Label-->

                                        <!--Sale Label-->

                                    </div>



                                </div>
                                <div class="content-product-right col-md-6 col-xs-12">
                                    <div class="title-product">
                                        <h1>Duidem rerum facilis</h1>
                                    </div>
                                    <!-- Review ---->
                                    <div class="box-review">
                                       
                                        <a class="reviews_button" href=""
                                           onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">0
                                            review (s)</a> | <a class="write_review_button" href=""
                                                            onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">Write
                                            a review</a>
                                    </div>

                                    <div class="product-label">
                                        <div class="stock">
                                            <span>Availability:</span>
                                            <span class="status-stock">In Stock</span>
                                        </div>
                                        <div class="product_page_price price" itemprop="offerDetails" itemscope
                                             itemtype="http://data-vocabulary.org/Offer">
                                            <span class="price" itemprop="price">123.200VNĐ</span> </div>
                                    </div>

                                    <!--Countdown box-->


                                    <!--End countdown box-->
                                    <div class="product-box-desc">
                                        <div class="inner-box-desc">
                                            <div class="price-tax"><span>Ex Tax:</span> 101.000VNĐ</div>

                                            <div class="brand"><span>Brand:</span><a
                                                    href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/manufacturer/info&amp;manufacturer_id=8">Apple</a>
                                            </div>

                                            <div class="model"><span>Product Code:</span> product 11</div>

                                        </div>

                                    </div>

                                    <div class="short_description">
                                        <h3>Quick Overview</h3>

                                        iPhone is a revolutionary new mobile phone that allows you to make a call by
                                        simply tapping a name or number in your address book, a favorites list, or a
                                        call log. It also automatically syncs all your contacts from a PC, Mac, or
                                        Internet service. ...
                                    </div>

                                    <div id="product">

                                        <h3>Available Options</h3>



                                        <div class="image_option_type form-group required">
                                            <label class="control-label">Colors</label>
                                            <ul class="product-options clearfix" id="input-option231">
                                                <li class="radio">
                                                    <label>
                                                        <input class="image_radio" type="radio" name="option[231]"
                                                               value="27" />
                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/colors/brown-50x50.jpg"
                                                             data-original-title="Brown"
                                                             class="img-thumbnail icon icon-color" />
                                                        <i class="fa fa-check"></i>
                                                    </label>
                                                </li>
                                                <li class="radio">
                                                    <label>
                                                        <input class="image_radio" type="radio" name="option[231]"
                                                               value="28" />
                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/colors/green-50x50.jpg"
                                                             data-original-title="Green"
                                                             class="img-thumbnail icon icon-color" />
                                                        <i class="fa fa-check"></i>
                                                    </label>
                                                </li>
                                                <li class="radio">
                                                    <label>
                                                        <input class="image_radio" type="radio" name="option[231]"
                                                               value="26" />
                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/colors/blue-50x50.jpg"
                                                             data-original-title="Blue"
                                                             class="img-thumbnail icon icon-color" />
                                                        <i class="fa fa-check"></i>
                                                    </label>
                                                </li>
                                                <li class="radio selected-option"></li>
                                            </ul>
                                        </div>










                                        <div class="form-group box-info-product">
                                            <div class="option quantity">

                                                <div class="input-group quantity-control">
                                                    <label>Qty</label>
                                                    <input class="form-control" type="text" name="quantity" value="1" />
                                                    <input type="hidden" name="product_id" value="40" />
                                                    <span class="input-group-addon product_quantity_down">−</span>
                                                    <span class="input-group-addon product_quantity_up">+</span>
                                                </div>
                                            </div>

                                            <div class="cart">
                                                <input type="button" data-toggle="tooltip" title="Add to Cart"
                                                       value="Add to Cart" data-loading-text="Loading..." id="button-cart"
                                                       class="btn btn-mega btn-lg" />
                                            </div>
                                            <div class="wishlist">
                                                <a class="icon" data-toggle="tooltip" title="Add to Wish List"
                                                   onclick="wishlist.add('40');"><i class="fa fa-heart"></i></a>
                                            </div>
                                            <div class="compare">
                                                <a class="icon" data-toggle="tooltip" title="Compare this Product"
                                                   onclick="compare.add('40');"><i class="fa fa-exchange"></i></a>
                                            </div>

                                        </div>

                                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                        <script type="text/javascript"
                                        src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57470e0ecf659a7f"></script>
                                        <!-- Go to www.addthis.com/dashboard to customize your tools -->
                                        <div class="addthis_native_toolbox"></div>

                                    </div><!-- end box info product -->

                                </div>

                            </div>
                        </div><!-- end - left-content-product --->
                        <section class="col-lg-2 hidden-sm hidden-md hidden-xs slider-products">
                        </section>

                    </div>

                    <script type="text/javascript">
                                                       $(document).ready(function () {
                                                           var zoomCollection = '.large-image img';
                                                           $(zoomCollection).elevateZoom({
                                                               zoomType: "inner",
                                                               lensSize: "200",
                                                               easing: true,

                                                               gallery: 'thumb-slider',
                                                               cursor: 'pointer',
                                                               galleryActiveClass: "active"
                                                           });
                                                           $('.large-image img').magnificPopup({
                                                               items: [
                                                                   {src: 'http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-1000x1000.PNG'}, {src: 'http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-1000x1000.jpg'}, {src: 'http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/4-1000x1000.png'}, {src: 'http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/b12-1000x1000.jpg'}, {src: 'http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/W8-1000x1000.jpg'}, {src: 'http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/37-1000x1000.jpg'}, ],
                                                               gallery: {enabled: true, preload: [0, 2]},
                                                               type: 'image',
                                                               mainClass: 'mfp-fade',
                                                               callbacks: {
                                                                   open: function () {
                                                                       var activeIndex = parseInt($('#thumb-slider .img.active').attr('data-index'));
                                                                       var magnificPopup = $.magnificPopup.instance;
                                                                       magnificPopup.goTo(activeIndex);
                                                                   }
                                                               }
                                                           });

                                                       });

                    </script>


                    <div class="bototm-detail col-xs-12">
                        <div class="row">
                            <div class="col-lg-3 col-md-4  col-xs-12">

                                <!-- Products widgets desktop-->
                                <div class="module related products-list grid">
                                    <h3 class="modtitle">
                                        <span>Related Products</span>
                                    </h3>
                                    <div class="releate-products ">
                                        <!-- Products list -->
                                        <div class="product-item-container">


                                            <div class="product-item">
                                                <div class="media">
                                                    <div class="media-left product-image-container  ">
                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-270x270.jpg"
                                                             alt="Bikum masen dumas" title="Bikum masen dumas"
                                                             class="img-responsive" />

                                                        <!--- New ------->

                                                        <!------SALE ---------->


                                                    </div>


                                                    <div class="media-body">
                                                        <div class="caption">
                                                          
                                                            <h4><a class="preview-image"
                                                                   href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=42">Bikum
                                                                    masen dumas</a></h4>
                                                            <div class="price">
                                                                <span class="price-new">122.000VNĐ</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                                <div class="line-divider"></div>

                                <script>// <![CDATA[
                                    jQuery(document).ready(function ($) {
                                        $('.releate-products-slider').owlCarousel2({
                                            pagination: false,
                                            center: false,
                                            nav: true,
                                            dots: false,
                                            loop: true,
                                            margin: 25,
                                            navText: ['prev', 'next'],
                                            slideBy: 1,
                                            autoplay: false,
                                            autoplayTimeout: 2500,
                                            autoplayHoverPause: true,
                                            autoplaySpeed: 800,
                                            startPosition: 0,
                                            responsive: {
                                                0: {
                                                    items: 1
                                                },
                                                480: {
                                                    items: 1
                                                },
                                                768: {
                                                    items: 1
                                                },
                                                1200: {
                                                    items: 1
                                                }
                                            }
                                        });
                                    });
// ]]></script>
                            </div> <!-- End related -->


                            <div class="col-lg-9 col-md-8  col-xs-12">
                                <div class="producttab ">
                                    <div class="tabsslider  vertical-tabs col-xs-12">

                                        <ul class="nav nav-tabs col-lg-3 col-md-4 col-sm-3">
                                            <li class="active"><a data-toggle="tab" href="#tab-1">MÔ TẢ</a>
                                            </li>


                                            <li class="item_nonactive"><a data-toggle="tab" href="#tab-review">ĐÁNH GIÁ
                                                    (0)</a></li>


                                        </ul>

                                        <div class="tab-content col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                            <div id="tab-1" class="tab-pane fade active in">
                                                <p class="intro">
                                                    iPhone is a revolutionary new mobile phone that allows you to
                                                    make a
                                                    call by simply tapping a name or number in your address book, a
                                                    favorites list, or a call log. It also automatically syncs all
                                                    your
                                                    contacts from a PC, Mac, or Internet service. And it lets you
                                                    select
                                                    and listen to voicemail messages in whatever order you want just
                                                    like email.</p>
                                            </div>

                                            <div id="tab-review" class="tab-pane fade">
                                                <form>
                                                    <div id="review"></div>
                                                    <h2 id="review-title">Write a review</h2>
                                                    Please <a
                                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/login">login</a>
                                                    or <a
                                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/register">register</a>
                                                    to review
                                                </form>
                                            </div>
                                        </div>
                                    </div><!-- End Tabs Slider -->

                                    <div class="up-sell-product col-xs-12">
                                        <div class="module up-sell">
                                            <h3 class="modtitle"><span>SẢN PHẨM LIÊN QUAN</span></h3>
                                            <div class="so-basic-product"
                                                 id="so_basic_products_189_1402354391575541206">
                                                <div class="item-wrap row cf products-list grid">
                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=42"
                                                                           target="_blank" title="Bikum masen dumas">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-270x270.jpg"
                                                                                 class="img-1" alt="Bikum masen dumas">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/37-270x270.jpg"
                                                                                 class="img-2" alt="Bikum masen dumas">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=42"
                                                                           target="_blank">Bikum masen dumas</a>
                                                                    </h4>

                                                                  

                                                                    <div class="price">
                                                                        <span class="price-new">122.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            100.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=47"
                                                                           target="_blank"
                                                                           title="Denouncing pleasure an">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/6-270x270.png"
                                                                                 class="img-1"
                                                                                 alt="Denouncing pleasure an">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/34-270x270.jpg"
                                                                                 class="img-2"
                                                                                 alt="Denouncing pleasure an">
                                                                        </a>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=47"
                                                                           target="_blank">Denouncing pleasure
                                                                            an</a>
                                                                    </h4>

                                                                  

                                                                    <div class="price">
                                                                        <span class="price-new">122.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            100.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=28"
                                                                           target="_blank"
                                                                           title="Deserunt mollitia animi">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/W8-270x270.jpg"
                                                                                 class="img-1"
                                                                                 alt="Deserunt mollitia animi">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/b12-270x270.jpg"
                                                                                 class="img-2"
                                                                                 alt="Deserunt mollitia animi">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=28"
                                                                           target="_blank">Deserunt mollitia
                                                                            animi</a>
                                                                    </h4>

                                                                    <div class="price">
                                                                        <span class="price-new">122.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            100.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=41"
                                                                           target="_blank" title="Dignissimos ducimus">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/4-270x270.png"
                                                                                 class="img-1" alt="Dignissimos ducimus">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/demo/imac_3-270x270.jpg"
                                                                                 class="img-2" alt="Dignissimos ducimus">
                                                                        </a>
                                                                    </div>


                                                                    <!--Sale Label-->

                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=41"
                                                                           target="_blank">Dignissimos ducimus</a>
                                                                    </h4>

                                                                    <div class="price">
                                                                        <span class="price-new">122.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            100.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=56"
                                                                           target="_blank" title="Emdcu meagi">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/el1-270x270.jpg"
                                                                                 class="img-1" alt="Emdcu meagi">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/el5-270x270.jpg"
                                                                                 class="img-2" alt="Emdcu meagi">
                                                                        </a>
                                                                    </div>


                                                                    <!--Sale Label-->

                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=56"
                                                                           target="_blank">Emdcu meagi</a></h4>

                                                                    <div class="price">
                                                                        <span class="price-new">80.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            80.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=32"
                                                                           target="_blank" title="Fuzan suma mipon">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/J10-270x270.jpg"
                                                                                 class="img-1" alt="Fuzan suma mipon">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/16-270x270.png"
                                                                                 class="img-2" alt="Fuzan suma mipon">
                                                                        </a>
                                                                    </div>


                                                                    <!--Sale Label-->

                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=32"
                                                                           target="_blank">Fuzan suma mipon</a>
                                                                    </h4>


                                                                    <div class="price">
                                                                        <span class="price-new">842.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            700.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=43"
                                                                           target="_blank"
                                                                           title="Goken ruma nitren pikame">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/J6-270x270.jpg"
                                                                                 class="img-1"
                                                                                 alt="Goken ruma nitren pikame">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/16-270x270.png"
                                                                                 class="img-2"
                                                                                 alt="Goken ruma nitren pikame">
                                                                        </a>
                                                                    </div>


                                                                    <!--Sale Label-->

                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=43"
                                                                           target="_blank">Goken ruma nitren
                                                                            pikame</a>
                                                                    </h4>


                                                                    <div class="price">
                                                                        <span class="price-new">602.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            500.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-element product-layout ">
                                                        <div class="item-inner product-item-container">
                                                            <div class="left-block">
                                                                <div class="product-image-container">

                                                                    <div class="image">
                                                                        <a class="lt-image"
                                                                           href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=44"
                                                                           target="_blank" title="Hazen dima polan">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/e10-270x270.jpg"
                                                                                 class="img-1" alt="Hazen dima polan">
                                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/demo/macbook_air_4-270x270.jpg"
                                                                                 class="img-2" alt="Hazen dima polan">
                                                                        </a>
                                                                    </div>


                                                                    <!--Sale Label-->

                                                                </div>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=44"
                                                                           target="_blank">Hazen dima polan</a>
                                                                    </h4>
                                                                 
                                                                    <div class="price">
                                                                        <span class="price-new">1,202.000VNĐ</span>
                                                                        <span class="price-tax">Ex Tax:
                                                                            1,000.000VNĐ</span>
                                                                    </div>
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <script>// <![CDATA[
                                            jQuery(document).ready(function ($) {
                                                $('.item-wrap').owlCarousel2({
                                                    pagination: false,
                                                    center: false,
                                                    nav: true,
                                                    dots: false,
                                                    loop: true,
                                                    margin: 0,
                                                    navText: ['prev', 'next'],
                                                    slideBy: 4,
                                                    autoplay: false,
                                                    autoplayTimeout: 2500,
                                                    autoplayHoverPause: true,
                                                    autoplaySpeed: 800,
                                                    startPosition: 0,
                                                    responsive: {
                                                        0: {
                                                            items: 1
                                                        },
                                                        480: {
                                                            items: 2
                                                        },
                                                        768: {
                                                            items: 2
                                                        },
                                                        911: {
                                                            items: 3
                                                        },
                                                        1200: {
                                                            items: 4
                                                        }
                                                    }
                                                });
                                            });
// ]]></script>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-website>
