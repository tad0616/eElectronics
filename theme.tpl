<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>

    <!--載入由使用者設定的各項佈景變數-->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>


    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>

    <!-- 局部套用的樣式，如果有載入完整樣式 theme_css.tpl 那就不需要這一部份 -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css.tpl"}>

    <link rel="stylesheet" href="<{xoImgUrl}>css/owl.carousel.css">
    <link rel="stylesheet" href="<{xoImgUrl}>css/styles.css">
    <link rel="stylesheet" href="<{xoImgUrl}>css/responsive.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <{includeq file="$theme_name/xotpl/my_css.tpl"}>
  </head>
  <body>


    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="logo">
                        <{includeq file="$theme_name/xotpl/logo.tpl"}>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->


    <{includeq file="$theme_name/xotpl/navbar.tpl"}>

    <{if $xoops_dirname == "system"}>
        <{includeq file="$theme_name/xotpl/slider.tpl"}>
        <{foreach from=$xoBlocks.page_topcenter item=block name=cb}>
            <div class="<{cycle values='promo-area,maincontent-area'}>">
                <div class="zigzag-bottom"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                            <div class="blockContent">
                              <{$block.content}>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <{/foreach}>

        <{foreach from=$xoBlocks.page_topleft item=block name=clb}>
            <div class="<{cycle values='promo-area,maincontent-area'}>">
                <div class="zigzag-bottom"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                            <div class="blockContent">
                              <{$block.content}>
                            </div>
                        </div>
                        <{if $smarty.foreach.clb.first}>
                          <{assign var=page_topright value = $xoBlocks.page_topright|@current}>
                        <{else}>
                          <{assign var=page_topright value = $xoBlocks.page_topright|@next}>
                        <{/if}>

                        <div class="col-sm-6">
                            <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                            <div class="blockContent">
                              <{$page_topright.content}>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <{/foreach}>

        <{foreach from=$xoBlocks.page_bottomcenter item=block name=cbb}>
            <div class="<{cycle values='promo-area,maincontent-area'}>">
                <div class="zigzag-bottom"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                            <div class="blockContent">
                              <{$block.content}>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <{/foreach}>

        <{foreach from=$xoBlocks.page_bottomleft item=block name=cblb}>
            <div class="<{cycle values='promo-area,maincontent-area'}>">
                <div class="zigzag-bottom"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                            <div class="blockContent">
                              <{$block.content}>
                            </div>
                        </div>
                        <{if $smarty.foreach.clb.first}>
                          <{assign var=page_bottomright value = $xoBlocks.page_bottomright|@current}>
                        <{else}>
                          <{assign var=page_bottomright value = $xoBlocks.page_bottomright|@next}>
                        <{/if}>

                        <div class="col-sm-6">
                            <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                            <div class="blockContent">
                              <{$page_bottomright.content}>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <{/foreach}>
        <{includeq file="$theme_name/xotpl/bottom.tpl"}>
        <{includeq file="$theme_name/xotpl/footer.tpl"}>
    <{else}>
        <div class="container">
            <!-- 載入布局 -->
            <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/$theme_type.tpl"}>
        </div>
        <{includeq file="$theme_name/xotpl/footer-top.tpl"}>
        <{includeq file="$theme_name/xotpl/footer.tpl"}>
    <{/if}>


    <!-- 載入bootstrap -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

    <!-- 載入自訂js -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>


    <{$my_code}>

    <!-- jQuery sticky menu -->
    <script src="<{xoImgUrl}>js/owl.carousel.min.js"></script>
    <script src="<{xoImgUrl}>js/jquery.sticky.js"></script>

    <!-- jQuery easing -->
    <script src="<{xoImgUrl}>js/easing.js.js"></script>

    <!-- Main Script -->
    <script src="<{xoImgUrl}>js/main.js"></script>

    <!-- 顯示參數，開發用，開發完可刪除 -->
    <{if $show_var=='1'}>
      <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>
  </body>
</html>