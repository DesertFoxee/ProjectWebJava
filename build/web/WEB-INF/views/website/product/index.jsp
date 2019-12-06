<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Product">
    <jsp:attribute name="content">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=common/home"><i
                            class="fa fa-home"></i></a></li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33">Apparel</a>
                </li>
            </ul>
            <div class="row">
                <div class="col-xs-12">
                    <div class="module cus-style-supper-cate  ">
                        <div class="header">
                            <h3 class="modtitle">
                                <span class="icon-color" style="background-color: #ea3a3c; ">
                                    <i class="fa fa-empire #009688"></i>
                                    SẢN PHẨM <small class="arow-after"
                                                    style="border-color: transparent transparent  #ea3a3c transparent">
                                    </small>
                                </span>
                                <strong class="line-color" style="background-color: #ea3a3c"></strong>
                            </h3>
                        </div>
                        <div id="so_super_category_154" class="so-sp-cat first-load">

                            <div class="main-left" style="float: right;">
                                <div class="banner-post-text">
                                    <a href="#" title="banner">  <img src="<c:url value="/resources/images/common/jpg/s22.jpg"/>" alt="banner">
                                    </a> </div>
                                <div class="hot-category">
                                    <div class="category-wrap-cat">
                                        <div class="title-imageslider  sp-cat-title-parent">
                                            Hot Categories </div>

                                        <div id="cat_slider_4069187071575549906" class="slider">
                                            <div class="cat_slider_inner so_category_type_default">
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=60"
                                                               title="Egante mangetes" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Egante mangetes </a>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=61"
                                                               title="Guntes magesg" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Guntes magesg </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=62"
                                                               title="Gante extensg" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Gante extensg </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=63"
                                                               title="Sine engain" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Sine engain </a>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=64"
                                                               title="Angene mafin" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Angene mafin </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=66"
                                                               title="Rengae manges" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Rengae manges </a>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="main-right">
                                <div id="content" class=" col-md-12 col-sm-8  col-xs-12" style="
                                     padding-left: 0px;">
                                    <div class="products-category">
                                        <!--// Begin  Today Deals-->
                                        <div class="product-filter filters-panel">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"style="width: 5%;">
                                                    <div class="view-mode" >
                                                        <div class="list-view">
                                                            <button class="btn btn-default grid active"
                                                                    data-toggle="tooltip" title=""
                                                                    data-original-title="Grid"><i
                                                                    class="fa fa-th-large"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="short-by-show form-inline text-left col-lg-7 col-sm-6 col-xs-12">
                                                    <div class="form-group short-by">
                                                        <label class="control-label" for="input-sort">Sắp xếp sản phẩm:</label>
                                                        <select id="input-sort" class="form-control"
                                                                onchange="location = this.value;">
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=p.sort_order&amp;order=ASC"
                                                                selected="selected">Default</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=pd.name&amp;order=ASC">
                                                                Name (A - Z)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=pd.name&amp;order=DESC">
                                                                Name (Z - A)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=p.price&amp;order=ASC">
                                                                Price (Low &gt; High)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=p.price&amp;order=DESC">
                                                                Price (High &gt; Low)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=rating&amp;order=DESC">
                                                                Rating (Highest)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=rating&amp;order=ASC">
                                                                Rating (Lowest)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=p.model&amp;order=ASC">
                                                                Model (A - Z)</option>
                                                            <option
                                                                value="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;sort=p.model&amp;order=DESC">
                                                                Model (Z - A)</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="box-pagination col-lg-3 col-sm-4 col-xs-12 text-right" style="float: right;">
                                                    <ul class="pagination">
                                                        <li><a
                                                                href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;page=2">|&lt;</a>
                                                        </li>
                                                        <li><a
                                                                href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;page=2">&gt;|</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //end Filters -->

                                        <!--Changed Listings-->
                                        <div class="products-list row grid so-filter-gird">
                                            <!-- GRID VIEW -->
                                            <div class="product-layout col-md-3 col-sm-6 col-xs-6 ">
                                                <div class="product-item-container">
                                                    <div class="left-block">
                                                        <div class="product-image-container lt-image  ">

                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-270x270.jpg"
                                                                 title="Dail miren tukan potrem"
                                                                 class="img-1 img-responsive">
                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-270x270.jpg"
                                                                 alt="Dail miren tukan potrem"
                                                                 title="Dail miren tukan potrem"
                                                                 class="img-2 img-responsive">
                                                        </div>

                                                    </div>

                                                    <div class="right-block">
                                                        <div class="caption">
                                                            <h4><a
                                                                    href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;path=33&amp;product_id=30">Dail
                                                                    miren tukan potrem</a></h4>

                                                            <div class="price">
                                                                <span class="price-new">122.000VNĐ</span>

                                                            </div>
                                                            <div class="description  hidden ">
                                                                <p>
                                                                    Canon's press material for the EOS 5D states that it
                                                                    'defines (a)
                                                                    new D-SLR category', while we're not typically too
                                                                    concerned with
                                                                    marketing talk this particular statement is clearly
                                                                    pretty accura..
                                                                </p>
                                                            </div>
                                                        </div>

                                                    </div><!-- right block -->

                                                </div>
                                            </div>



                                            <!-- GRID VIEW -->
                                            <div class="product-layout col-md-3 col-sm-6 col-xs-6 ">
                                                <div class="product-item-container">
                                                    <div class="left-block">
                                                        <div class="product-image-container lt-image  ">

                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/e13-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/e13-270x270.jpg"
                                                                 title="Id est laborum et dol"
                                                                 class="img-1 img-responsive">
                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/15-270x270.png"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/15-270x270.png"
                                                                 alt="Id est laborum et dol"
                                                                 title="Id est laborum et dol"
                                                                 class="img-2 img-responsive">
                                                        </div>
                                                    </div>

                                                    <div class="right-block">
                                                        <div class="caption">
                                                            <h4><a
                                                                    href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;path=33&amp;product_id=31">Id
                                                                    est laborum et dol</a></h4>

                                                            <div class="price">
                                                                <span class="price-new">98.000VNĐ</span>

                                                            </div>
                                                            <div class="description  hidden ">
                                                                <p>The 30-inch Apple Cinema HD Display delivers an
                                                                    amazing 2560 x 1600
                                                                    pixel resolution. Designed specifically for the
                                                                    creative
                                                                    professional,
                                                                    this display provides more space for easier access
                                                                    to all..</p>
                                                            </div>
                                                        </div>

                                                    </div><!-- right block -->

                                                </div>
                                            </div>

                                            <!-- GRID VIEW -->
                                            <div class="product-layout col-md-3 col-sm-6 col-xs-6 ">
                                                <div class="product-item-container">
                                                    <div class="left-block">
                                                        <div class="product-image-container lt-image  ">

                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/h4-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/h4-270x270.jpg"
                                                                 title="Chicken kielbasa" class="img-1 img-responsive">
                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/h10-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/h10-270x270.jpg"
                                                                 alt="Chicken kielbasa" title="Chicken kielbasa"
                                                                 class="img-2 img-responsive">
                                                        </div>

                                                    </div>

                                                    <div class="right-block">
                                                        <div class="caption">
                                                            <h4><a
                                                                    href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;path=33&amp;product_id=64">Chicken
                                                                    kielbasa</a></h4>
                                                            <div class="price">
                                                                <span class="price-new">79.000VNĐ</span>

                                                            </div>
                                                            <div class="description  hidden ">
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                                                    elit, sed do
                                                                    eiusmod tempor incididunt ut labore et dolore magna
                                                                    aliqua. Ut enim
                                                                    ad minim veniam, quis nostrud exercitation ullamco
                                                                    laboris nisi ut
                                                                    ..</p>
                                                            </div>
                                                        </div>

                                                    </div><!-- right block -->

                                                </div>
                                            </div>

                                            <!-- GRID VIEW -->
                                            <div class="product-layout col-md-3 col-sm-6 col-xs-6 ">
                                                <div class="product-item-container">
                                                    <div class="left-block">
                                                        <div class="product-image-container lt-image  ">

                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f10-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f10-270x270.jpg"
                                                                 title="Kevinconsequat exercit"
                                                                 class="img-1 img-responsive">
                                                            <img data-src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f19-270x270.jpg"
                                                                 src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f19-270x270.jpg"
                                                                 alt="Kevinconsequat exercit"
                                                                 title="Kevinconsequat exercit"
                                                                 class="img-2 img-responsive">
                                                        </div>
                                                    </div>

                                                    <div class="right-block">
                                                        <div class="caption">
                                                            <h4><a
                                                                    href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;path=33&amp;product_id=85">Kevinconsequat
                                                                    exercit</a></h4>


                                                            <div class="price">
                                                                <span class="price-new">88.000VNĐ</span>

                                                            </div>
                                                            <div class="description  hidden ">
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                                                    elit, sed do
                                                                    eiusmod tempor incididunt ut labore et dolore magna
                                                                    aliqua. Ut enim
                                                                    ad minim veniam, quis nostrud exercitation ullamco
                                                                    laboris nisi ut
                                                                    ..</p>
                                                            </div>
                                                        </div>

                                                    </div><!-- right block -->

                                                </div>
                                            </div>
                                        </div>

                                        <div class="product-filter product-filter-bottom filters-panel">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs">
                                                    <div class="view-mode">
                                                        <div class="list-view">
                                                            <button class="btn btn-default grid active"
                                                                    data-toggle="tooltip" title=""
                                                                    data-original-title="Grid"><i
                                                                    class="fa fa-th-large"></i></button>
                                                            <button class="btn btn-default list " data-toggle="tooltip"
                                                                    title="" data-original-title="List"><i
                                                                    class="fa fa-bars"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="short-by-show text-center col-lg-7 col-sm-6 col-xs-12">
                                                    <div class="form-group text-right-show" style="margin: 7px 10px">
                                                        Showing 1 to 8 of
                                                        16 (2 Pages)</div>

                                                </div>
                                                <div class="box-pagination col-lg-3 col-sm-4 col-xs-12 text-right">
                                                    <ul class="pagination">
                                                        <li><a
                                                                href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;page=2">|&lt;</a>
                                                        </li>
                                                        <li><a
                                                                href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33&amp;page=2">&gt;|</a>
                                                        </li>
                                                    </ul>
                                                </div>

                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                            $('.view-mode .list-view button').bind("click", function () {
                                                if ($(this).is(".active")) {
                                                    return false;
                                                }
                                                $.cookie('listingType', $(this).is(".grid") ? 'grid' : 'list', {path: '/'});
                                                location.reload();
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="loader-mod-box" style="display: none;"></div>
                    </div>
                </div>

            </div>
        </div>
    </jsp:attribute>
</t:template-website>
