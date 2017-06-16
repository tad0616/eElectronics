<style type="text/css">
  body,.sm-blue a, .sm-blue a:hover, .sm-blue a:focus, .sm-blue a:active {
    font-family:<{$font_family}>;
  }

  .copyright{
    <{$footer_style}>
  }

  .footer-bottom-area {
    background: <{$footer_bgcolor}>;
    color: <{$footer_color}>;
  }

  .footer-top-area .zigzag-bottom ,.sm-blue a, .sm-blue a:hover, .sm-blue a:focus, .sm-blue a:active, .sm-blue{
    background: <{$footer_bgcolor}>;
  }

  .mainmenu-area ,  .maincontent-area .zigzag-bottom ,.promo-area {
    background: none repeat scroll 0 0 <{$navbar_bg_top}>;
  }

  .maincontent-area>.zigzag-bottom+.footer-top-area  , .promo-area>.zigzag-bottom+.footer-top-area {
      background: none repeat scroll 0 0 #333;
  }

  .logo h1 a span {
    color: <{$navbar_bg_top}>;
  }

  .sm-blue a.current, .sm-blue ul a.current, .sm-blue a, .sm-blue a:hover, .sm-blue a:focus, .sm-blue a:active, .sm-blue a.highlighted,.sm-blue a.disabled, .sm-blue ul a:hover, .sm-blue ul a:focus, .sm-blue ul a:active, .sm-blue ul a.highlighted{
    background: <{$navbar_bg_top}>;
    color: <{$navbar_color}>;
  }

  @media (min-width: 768px) {
    .sm-blue a.current, .sm-blue ul a.current, .sm-blue a, .sm-blue a:hover, .sm-blue a:focus, .sm-blue a:active, .sm-blue a.highlighted,.sm-blue a.disabled, .sm-blue ul a:hover, .sm-blue ul a:focus, .sm-blue ul a:active, .sm-blue ul a.highlighted{
      background: <{$navbar_bg_top}>;
      color: <{$navbar_color}>;
    }
  }

  .sm-blue a:hover, .sm-blue a:focus, .sm-blue a:active, .sm-blue a.highlighted {
    background: <{$navbar_hover}>;
  }
</style>