<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Yellow, V​​, Victory at any cost, Delivery by courier, You know, my friends, Information partners, Subscribe">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="/css/nicepage.css" media="screen">
<link rel="stylesheet" href="/css/HomeAdmin.css" media="screen">
    <script class="u-script" type="text/javascript" src="/js/jqueryAdmin.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/js/nicepageAdmin.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.19.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "admin",
		"logo": "/images/small-6948-60df4ba05ca26.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-overlap"><header class="u-clearfix u-header u-header" id="sec-64be"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1" data-image-width="150" data-image-height="71">
          <img src="/images/small-6948-60df4ba05ca26.png" class="u-logo-image u-logo-image-1" data-image-width="105">
        </a>
        <nav class="u-menu u-menu-one-level u-offcanvas u-menu-1" data-position="">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px; font-weight: 500;">
            <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-borders u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-2 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-active-grey-5 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-button-style u-hover-grey-10 u-nav-link u-text-active-grey-90 u-text-grey-90 u-text-hover-grey-90" href="/" style="padding: 10px 20px;">Home</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html" style="padding: 10px 110px;">Home</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-expanded-width-xl u-image u-section-1" id="carousel_d37b" data-image-width="1020" data-image-height="672">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-size-27">
                <div class="u-layout-col">
                  <div class="u-align-right-sm u-align-right-xs u-container-style u-layout-cell u-left-cell u-shape-rectangle u-size-60 u-layout-cell-1">
                    <div class="u-container-layout u-container-layout-1">
                      <h2 class="u-align-left u-text u-text-1">Welcome Admin <c:out value="${currentUser.username}"/></h2>
                      <p class="u-align-center u-text u-text-2">Here are the drivers requests you will check for today</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-size-33">
                <div class="u-layout-row">
                  <div class="u-align-left u-container-style u-layout-cell u-radius-30 u-right-cell u-shape-round u-size-60 u-white u-layout-cell-2">
                    <div class="u-container-layout u-valign-bottom-md u-container-layout-2">
                      <div class="u-carousel u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-gallery-slider u-layout-carousel u-lightbox u-no-transition u-show-text-on-hover u-gallery-1" data-interval="5000" data-u-ride="carousel" id="carousel-549d">
                        <ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
                          <li data-u-target="#carousel-549d" data-u-slide-to="0" class="u-active u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
                          <li data-u-target="#carousel-549d" data-u-slide-to="1" class="u-grey-70 u-shape-circle" style="width: 10px; height: 10px;"></li>
                        </ol>
                        <div class="u-carousel-inner u-gallery-inner" role="listbox">
                          <div class="u-active u-carousel-item u-effect-fade u-gallery-item u-carousel-item-1">
                            <div class="u-back-slide">
                              <img class="u-back-image u-expanded" src="/images/default-image.jpg">
                            </div>
                            <div class="u-align-center u-over-slide u-shading u-valign-bottom u-over-slide-1">
                              <h3 class="u-gallery-heading">Sample Title</h3>
                              <p class="u-gallery-text">Sample Text</p>
                            </div>
                          </div>
                          <div class="u-carousel-item u-effect-fade u-gallery-item u-carousel-item-2">
                            <div class="u-back-slide">
                              <img class="u-back-image u-expanded" src="/images/default-image.jpg">
                            </div>
                            <div class="u-align-center u-over-slide u-shading u-valign-bottom u-over-slide-2">
                              <h3 class="u-gallery-heading">Sample Title</h3>
                              <p class="u-gallery-text">Sample Text</p>
                            </div>
                          </div>
                        </div>
                        <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-icon-circle u-opacity u-opacity-70 u-text-hover-palette-3-light-1 u-text-palette-5-dark-1 u-carousel-control-1" href="#carousel-549d" role="button" data-u-slide="prev">
                          <span aria-hidden="true">
                            <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
                          </span>
                          <span class="sr-only">
                            <svg viewBox="0 0 451.847 451.847"><path d="M97.141,225.92c0-8.095,3.091-16.192,9.259-22.366L300.689,9.27c12.359-12.359,32.397-12.359,44.751,0
c12.354,12.354,12.354,32.388,0,44.748L173.525,225.92l171.903,171.909c12.354,12.354,12.354,32.391,0,44.744
c-12.354,12.365-32.386,12.365-44.745,0l-194.29-194.281C100.226,242.115,97.141,234.018,97.141,225.92z"></path></svg>
                          </span>
                        </a>
                        <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-icon-circle u-opacity u-opacity-70 u-text-hover-palette-3-light-1 u-text-palette-5-dark-1 u-carousel-control-2" href="#carousel-549d" role="button" data-u-slide="next">
                          <span aria-hidden="true">
                            <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
                          </span>
                          <span class="sr-only">
                            <svg viewBox="0 0 451.846 451.847"><path d="M345.441,248.292L151.154,442.573c-12.359,12.365-32.397,12.365-44.75,0c-12.354-12.354-12.354-32.391,0-44.744
L278.318,225.92L106.409,54.017c-12.354-12.359-12.354-32.394,0-44.748c12.354-12.359,32.391-12.359,44.75,0l194.287,194.284
c6.177,6.18,9.262,14.271,9.262,22.366C354.708,234.018,351.617,242.115,345.441,248.292z"></path></svg>
                          </span>
                        </a>
                      </div>
                      <div class="u-form u-form-1">
                        <form action="#" method="POST" class="u-clearfix u-form-spacing-24 u-form-vertical u-inner-form" style="padding: 0px;" source="custom" name="form">
                          <div class="u-align-left u-form-group u-form-submit">
                            <a href="#" class="u-active-white u-btn u-btn-submit u-button-style u-hover-palette-3-light-2 u-palette-3-base u-btn-1">APPROVE</a>
                            <input type="submit" value="submit" class="u-form-control-hidden" wfd-invisible="true">
                          </div>
                          <div class="u-form-send-message u-form-send-success" wfd-invisible="true"> Thank you! Your message has been sent. </div>
                          <div class="u-form-send-error u-form-send-message" wfd-invisible="true"> Unable to send your message. Please fix errors then try again. </div>
                          <input type="hidden" value="" name="recaptchaResponse" wfd-invisible="true">
                        </form>
                      </div>
                      <div class="u-align-right u-form u-form-2">
                        <form action="#" method="POST" class="u-clearfix u-form-spacing-24 u-form-vertical u-inner-form" style="padding: 0px;" source="custom" name="form">
                          <div class="u-align-center-lg u-align-center-xl u-align-right-md u-align-right-sm u-align-right-xs u-form-group u-form-submit">
                            <a href="#" class="u-active-white u-btn u-btn-submit u-button-style u-hover-palette-3-light-2 u-palette-3-base u-btn-2">DECLINE</a>
                            <input type="submit" value="submit" class="u-form-control-hidden" wfd-invisible="true">
                          </div>
                          <div class="u-form-send-message u-form-send-success" wfd-invisible="true"> Thank you! Your message has been sent. </div>
                          <div class="u-form-send-error u-form-send-message" wfd-invisible="true"> Unable to send your message. Please fix errors then try again. </div>
                          <input type="hidden" value="" name="recaptchaResponse" wfd-invisible="true">
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-grey-10 u-section-2" id="carousel_8838">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-text u-text-1">DriveRS</h2>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="11.6%">
              <col width="22.4%">
              <col width="17%">
              <col width="17%">
              <col width="15%">
              <col width="15%">
            </colgroup>
            <thead class="u-align-center u-table-header u-table-header-1">
              <tr style="height: 45px;">
                <th class="u-table-cell"></th>
                <th class="u-table-cell">Name, e-mail</th>
                <th class="u-table-cell">Code</th>
                <th class="u-table-cell">Designation</th>
                <th class="u-table-cell">Phone</th>
                <th class="u-table-cell">Joining Date</th>
              </tr>
            </thead>
            <tbody class="u-align-center u-table-body">
              <tr style="height: 112px;">
                <td class="u-palette-3-base u-table-cell u-table-cell-7"></td>
                <td class="u-table-cell">Josh Anderson,<br>josh-info@gmail.com
                </td>
                <td class="u-table-cell">SU030</td>
                <td class="u-table-cell">Developer</td>
                <td class="u-table-cell">+1 222 33 44</td>
                <td class="u-table-cell">Mar 27, 2005</td>
              </tr>
              <tr style="height: 113px;">
                <td class="u-palette-3-base u-table-cell u-table-cell-13"></td>
                <td class="u-table-cell">Lina Hudson,<br>lina-h@gmail.com
                </td>
                <td class="u-table-cell">SU031</td>
                <td class="u-table-cell">Designer</td>
                <td class="u-table-cell">+1 222 34 43</td>
                <td class="u-table-cell">Dec 12, 2007</td>
              </tr>
              <tr style="height: 113px;">
                <td class="u-palette-3-base u-table-cell u-table-cell-19"></td>
                <td class="u-table-cell">Mike Henderson,<br>mike12@gmail.com
                </td>
                <td class="u-table-cell">SU032</td>
                <td class="u-table-cell">Manager</td>
                <td class="u-table-cell">+1 222 54 45</td>
                <td class="u-table-cell">Apr 23, 2001</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
    <style class="u-overlap-style">.u-overlap:not(.u-sticky-scroll) .u-header {
background-color: #f5d654 !important
}</style>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-28b4"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
      </div></footer>
</body>
</html>