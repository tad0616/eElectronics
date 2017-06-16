<link rel="stylesheet" href="<{$xoops_url}>/modules/tadtools/smartmenus/css/sm-core-css.css">
<link rel="stylesheet" href="<{xoImgUrl}>css/sm-blue.css">
<link rel="stylesheet" href="<{$xoops_url}>/modules/tadtools/smartmenus/css/sm-responsive.css">

<script src="<{$xoops_url}>/modules/tadtools/smartmenus/jquery.smartmenus.js"></script>
<script src="<{$xoops_url}>/modules/tadtools/smartmenus/sm-responsive.js"></script>

<script type="text/javascript">
  $(function() {
    $('#main-menu').smartmenus({
      mainMenuSubOffsetX: -1,
      mainMenuSubOffsetY: 4,
      subMenusSubOffsetX: 6,
      subMenusSubOffsetY: -6
    });
  });
</script>
<div class="mainmenu-area">
  <div class="container">
      <div class="row">
        <!-- Mobile menu toggle button (hamburger/x icon) -->
        <input id="main-menu-state" type="checkbox" />
        <label class="main-menu-btn" for="main-menu-state">
          <span class="main-menu-btn-icon"></span> Toggle main menu visibility
        </label>

        <ul id="main-menu" class="sm sm-blue">
          <{if $show_sitename==0}>
            <li><a href="<{$xoops_url}>/index.php"><{$smarty.const._TAD_HOME}></a></li>
          <{/if}>
          <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_main_clean.tpl"}>
          <{foreach from=$menu_var item=menu name=m}>
            <li><a href="<{$menu.url}>" target="<{$menu.target}>"><{$menu.title}></a>
            <{if $menu.submenu}>
              <ul>
                <{foreach from=$menu.submenu item=menu1 name=m1}>
                  <li><a href="<{$menu1.url}>" target="<{$menu1.target}>"><{$menu1.title}></a>
                    <{if $menu1.submenu}>
                      <ul>
                        <{foreach from=$menu1.submenu item=menu2 name=m2}>
                          <li><a href="<{$menu2.url}>" target="<{$menu2.target}>"><{$menu2.title}></a></li>
                        <{/foreach}>
                      </ul>
                    <{/if}>
                  </li>
                <{/foreach}>
              </ul>
            <{/if}>
            </li>
          <{/foreach}>
          <{if $xoops_isuser}>
            <{if $xoops_isadmin}>
              <li><a href="<{$xoops_url}>/modules/tad_themes/admin/dropdown.php" title="<{$smarty.const._TAD_MENU_CONFIG}>"><i class="fa fa-plus-circle"></i></a></li>

              <{if $xoops_dirname=="" || $xoops_dirname=="system"}>
                <li><a href="<{$xoops_url}>/admin.php" title="<{$smarty.const.TF_MODULE_CONFIG}>"><span class="fa fa-wrench"></span></a></li>
              <{else}>
                <li><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/admin/index.php" title="<{$smarty.const.TF_MODULE_CONFIG}>"><span class="fa fa-wrench"></span></a></li>
              <{/if}>
            <{/if}>

            <li>
              <a  href="#">
                <{$smarty.const.TF_USER_WELCOME}><{$xoops_name}>
              </a>

              <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_user_clean.tpl"}>

            </li>
          <{elseif $openid_login!="3"}>
            <li>
              <a href="#">
                <{$smarty.const.TF_USER_ENTER}>
              </a>
                <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu_login_clean.tpl"}>
            </li>
          <{/if}>
        </ul>
      </div>
  </div>
</div>