<?php
$i                           = 0;
$theme_config[$i]['name']    = "show_var";
$theme_config[$i]['text']    = TF_SHOW_VAR;
$theme_config[$i]['desc']    = TF_SHOW_VAR_DESC;
$theme_config[$i]['type']    = "yesno";
$theme_config[$i]['default'] = "0";

//字型設定
$i++;
$theme_config[$i]['name']    = "font_family";
$theme_config[$i]['text']    = TF_FONT_FAMILY;
$theme_config[$i]['desc']    = TF_FONT_FAMILY_DESC;
$theme_config[$i]['type']    = "text";
$theme_config[$i]['default'] = constant('TF_FONT_FAMILY_DEFAULT');

//頁尾底色
$i++;
$theme_config[$i]['name']    = "footer_color";
$theme_config[$i]['text']    = TF_FOOTER_COLOR;
$theme_config[$i]['desc']    = TF_FOOTER_COLOR_DESC;
$theme_config[$i]['type']    = "color";
$theme_config[$i]['default'] = "#ffffff";

//頁尾底色
$i++;
$theme_config[$i]['name']    = "footer_bgcolor";
$theme_config[$i]['text']    = TF_FOOTER_BGCOLOR;
$theme_config[$i]['desc']    = TF_FOOTER_BGCOLOR_DESC;
$theme_config[$i]['type']    = "color";
$theme_config[$i]['default'] = "#000000";

//頁尾內容樣式設定
$i++;
$theme_config[$i]['name']    = "footer_style";
$theme_config[$i]['text']    = TF_FOOTER_STYLE;
$theme_config[$i]['desc']    = TF_FOOTER_STYLE_DESC;
$theme_config[$i]['type']    = "textarea";
$theme_config[$i]['default'] = "line-height:180%;";

//頁尾區塊設定
$i++;
$theme_config[$i]['name']    = "footer_blocks";
$theme_config[$i]['text']    = TF_FOOTER_BLOCKS;
$theme_config[$i]['desc']    = TF_FOOTER_BLOCKS_DESC;
$theme_config[$i]['type']    = "array";
$theme_config[$i]['default'] = constant('TF_FOOTER_BLOCKS_DEFAULT');
