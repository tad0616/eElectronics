<?php
include_once XOOPS_ROOT_PATH . '/modules/tadtools/language/' . $GLOBALS['xoopsConfig']['language'] . '/theme_common.php';
/**自訂設定之語系**/
define("TF_SHOW_VAR", "顯示佈景變數資訊");
define("TF_SHOW_VAR_DESC", "佈景開發時，會顯示所有 tad_themes 提供的控制變數及設定值");
define("TF_FONT_FAMILY", "佈景字型設定");
define("TF_FONT_FAMILY_DEFAULT", "\"Helvetica Neue\",Helvetica,Arial,\"微軟正黑體\",sans-serif");
define("TF_FONT_FAMILY_DESC", "輸入字型名稱，有空白的部份需要用\"\"包起來。如：" . TF_FONT_FAMILY_DEFAULT);
define("TF_FOOTER_BGCOLOR", "頁尾底色");
define("TF_FOOTER_BGCOLOR_DESC", "頁尾底部的顏色");
define("TF_FOOTER_COLOR", "頁尾文字色");
define("TF_FOOTER_COLOR_DESC", "頁尾底部的文字顏色");
define("TF_FOOTER_IMG", "頁尾底圖");
define("TF_FOOTER_IMG_DESC", "可自行上傳想要的底圖");
define("TF_FOOTER_STYLE", "頁尾內容樣式設定");
define("TF_FOOTER_STYLE_DESC", "可使用CSS語法控制頁尾內容的外觀");
define("TF_FOOTER_BLOCKS", "底部四區塊");
define("TF_FOOTER_BLOCKS_DEFAULT", '[\n{"title":"會員選單","bid":"1"},\n{"title":"線上使用者","bid":"7"},\n{"title":"網站佈景","bid":"12"},\n{"title":"搜尋","bid":"3"}\n]');
define("TF_FOOTER_BLOCKS_DESC", '建議四個區塊，以json格式撰寫：[{"title":"標題","bid":"區塊編號"},{第二組設定...},...]，bid可從區塊管理觀察得到，若此格為空，自動會以左、右區塊取代之。');
