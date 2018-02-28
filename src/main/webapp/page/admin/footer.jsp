<script src="/js/jquery-1.10.1.min.js" type="text/javascript"></script>
<script src="/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="/js/bootstrap.min.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script src="/js/excanvas.min.js"></script>
<script src="/js/respond.min.js"></script>
<![endif]-->

<script src="/js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/js/jquery.cookie.min.js" type="text/javascript"></script>
<script src="/js/jquery.uniform.min.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.world.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="/js/jquery.flot.js" type="text/javascript"></script>
<script src="/js/jquery.flot.resize.js" type="text/javascript"></script>
<script src="/js/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="/js/date.js" type="text/javascript"></script>
<script src="/js/daterangepicker.js" type="text/javascript"></script>
<script src="/js/jquery.gritter.js" type="text/javascript"></script>
<script src="/js/fullcalendar.min.js" type="text/javascript"></script>
<script src="/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="/js/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="/js/app.js" type="text/javascript"></script>
<script src="/js/index.js" type="text/javascript"></script>
<script>
    jQuery(document).ready(function () {
        App.init(); // initlayout and core plugins
        Index.init();
//        Index.initJQVMAP(); // init index page's custom scripts
//        Index.initCalendar(); // init index page's custom scripts
//        Index.initCharts(); // init index page's custom scripts
//        Index.initChat();
//        Index.initMiniCharts();
        Index.initDashboardDaterange();
        Index.initIntro();
    });

</script>