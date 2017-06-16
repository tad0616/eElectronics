<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
        <{if $footer_blocks}>
            <{foreach from=$footer_blocks item=block name=cb}>
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                        <div class="blockContent">
                          <{block id=$block.bid}>
                        </div>
                    </div>
                </div>
            <{/foreach}>
        <{else}>
            <{assign var="i" value=0}>
            <{foreach from=$xoBlocks.canvas_left item=block name=cb}>
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu leftBlock">
                        <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                        <div class="blockContent">
                          <{$block.content}>
                        </div>
                    </div>
                </div>
                <{assign var="i" value=$i+1}>
                <{if $i == 4}>
                    <div class="clearfix"></div>
                    <{assign var="i" value=0}>
                <{/if}>
            <{/foreach}>
            <{foreach from=$xoBlocks.canvas_right item=block name=cb}>
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu rightBlock">
                        <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/blockTitle.tpl"}>
                        <div class="blockContent">
                          <{$block.content}>
                        </div>
                    </div>
                </div>
                <{assign var="i" value=$i+1}>
                <{if $i == 4}>
                    <div class="clearfix"></div>
                    <{assign var="i" value=0}>
                <{/if}>
            <{/foreach}>
        <{/if}>
        </div>
    </div>
</div> <!-- End footer top area -->