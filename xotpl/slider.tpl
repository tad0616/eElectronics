<{assign var=i value=0}>
<div class="slider-area">
  <div class="zigzag-bottom"></div>
  <div id="slide-list" class="carousel  slide" data-ride="carousel">
    <div class="slide-bulletz">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ol class="carousel-indicators slide-indicators">
              <{foreach from=$slider_var item=slide name=slider}>
                <li data-target="#slide-list" data-slide-to="<{$i}>" <{if $smarty.foreach.slider.first}>class="active"<{/if}>></li>
                <{assign var=i value=$i+1}>
              <{/foreach}>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <div class="carousel-inner" role="listbox">
      <{foreach from=$slider_var item=slide name=slider}>
        <div class="item <{if $smarty.foreach.slider.first}>active<{/if}>">
          <div class="single-slide">
            <div class="slide-bg" style="background-image: url(<{$slide.file_url}>)"></div>
            <div class="slide-text-wrapper">
              <div class="slide-text">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 col-md-offset-6">
                      <div class="slide-content">
                        <{$slide.text_description}>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      <{/foreach}>
    </div>
  </div>
</div>
<!-- End slider area -->

