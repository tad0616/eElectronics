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
          <li><a href="<{$xoops_url}>">回首頁</a></li>
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
        </ul>
      </div>
  </div>
</div>