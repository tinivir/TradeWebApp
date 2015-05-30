


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="DESCRIPTION" content="United Nations Comtrade Database - International Trade Statistics - Import/Export Data" />
    <meta name="KEYWORDS" content="trade, trade data, imports, exports, world trade, international trade, trade statistics, commodity, merchandise, services, trade in services, merchandise trade, comtrade, comtrade database" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Download trade data | UN Comtrade: International Trade Statistics</title>
    
    <link href="/data/Content/bootstrap.css" rel="stylesheet" />
    <link href="/data/Content/font-awesome.css" rel="stylesheet" />
    <link href="/data/Content/Select2/select2.css" rel="stylesheet" />
    <link href="/data/Content/Select2/select2-bootstrap.css" rel="stylesheet" />
    <link href="/data/Content/DataTables-1.9.4/media/css/jquery.dataTables.css" rel="stylesheet" />
    <link href="/data/Content/comtrade.css" rel="stylesheet" />
    
    

    

    <!--[if lt IE 9]>
    <link href="/data/Content/ltIE9.css" rel="stylesheet" />
    <script src="/data/Scripts/html5shiv/html5shiv.min.js"></script>
    <script src="/data/Scripts/respond/respond.min.js"></script>
    <![endif]-->
</head>
<body class="content-page">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="un-bar hidden-xs">
            <div class="container">
                <a href="http://www.un.org/"><img src="/data/img/un-logo-tiny.png" alt="United Nations" border="0" height="15"> United Nations</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="http://www.un.org/desa">Department of Economic and Social Affairs</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="http://unstats.un.org/unsd/">Statistics Division</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="http://unstats.un.org/unsd/trade/">Trade Statistics</a>
            </div>
        </div>
        <div class="container comtrade-nav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="http://comtrade.un.org"><img src="/data/img/logo-small.png" />
                    UN Comtrade <span class="hidden-sm hidden-xs hidden-md">Database</span>
                </a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/data/">Extract data <span class="badge hidden-sm hidden-xs">beta</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Legacy <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="http://comtrade.un.org/db/">Annual data</a></li>
                            <li><a href="http://comtrade.un.org/monthly/">Monthly data</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Data availability <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="http://comtrade.un.org/db/mr/daReportersResults.aspx">Annual data</a></li>
                            <li><a href="http://comtrade.un.org/monthly/Public/ReleaseInfo.aspx">Monthly data</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Metadata &amp; reference <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="http://unstats.un.org/unsd/tradekb/Knowledgebase/41">Reference tables</a></li>
                            <li><a href="http://comtrade.un.org/db/mr/rfCommoditiesList.aspx">Commodity list</a></li>
                            <li><a href="http://comtrade.un.org/db/mr/rfReportersList.aspx">Country list</a></li>
                            <li><a href="http://comtrade.un.org/db/mr/daExpNotebyRepYear.aspx">Explanatory notes</a></li>
                            <li><a href="http://comtrade.un.org/db/mr/daPubNoteDetail.aspx">Publication notes</a></li>
                            <li><a href="http://unstats.un.org/unsd/tradekb/Glossary/">Glossary</a></li>
                            <li><a href="http://unstats.un.org/unsd/tradekb/Knowledgebase/">Knowledge base</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right visible-xs">
                        <li><a href="https://www.surveymonkey.com/s/ComtradeUpgrade" target="_blank">Feedback</a></li>
                    <li><a href="https://www.surveymonkey.com/s/comtradebugs" target="_blank">Report a bug</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <a id="ct-feedback-tab" class="sidetab hidden-xs" href="https://www.surveymonkey.com/s/ComtradeUpgrade" target="_blank">Feedback</a>
    <a id="ct-bug-tab" data-toggle="tooltip" data-placement="left" title="Report a bug" class="sidetab bugtab hidden-xs" href="https://www.surveymonkey.com/s/comtradebugs" target="_blank"><span class="fa fa-bug fa-rotate-90"></span></a>
    <div id="ct-waiting" style="display:none;"></div>
    <div id="wrap">
        <div class="container">
            <br />
            


<div class="alert alert-warning">
    <h4>Welcome to the beta trade data extraction interface!</h4>
    <p>
        Right now this is still a <strong>beta</strong> interface, we want you to tell us <a href="https://www.surveymonkey.com/s/ComtradeUpgrade" target="_blank">how to improve it.</a>
        To begin with you won't be able to login, and results are <em>limited to 50,000</em> records. <strong>As of June, the entire site is powered by an 
        <a href="/data/doc/api/">open API</a> and both monthly and annual data are publicly accessible.</strong>
        Keep an eye out for other <a href="/data/doc/releasenotes/">new features</a> being added based on your feedback!
    </p>
    
    <hr class="visible-lg visible-md" />
    <p class="visible-lg visible-md">
        Batch and very large query support is currently only available via the <a href="http://comtrade.un.org/db/">legacy interface for annual data.</a><br />
        <span class="ct-data-footnote">We are working to add these services to the new interface as well.</span>
    </p>
</div>

<!--[if lt IE 8]>
    <div class="alert alert-danger">
        <h4>You are using a rather old browser...</h4>
        <p>
    <strong>Core supported browsers:</strong>
    The most recent 3 versions of Internet Explorer, Firefox, Google Chrome and Safari.
    In general the same applies to major mobile browsers, but display is altered
    to better fit small screen resolutions. Testing is most complete for the newest
    Android and iOS browsers.
</p>
<p>
    <strong>Partially supported browsers:</strong>
    <ul>
        <li>
            Internet Explorer 8: we understand many users are still running IE 8. Core features
            should work, but certain advanced features may be hidden / appear differently.
            If something fails please
            <a href="https://www.surveymonkey.com/s/comtradebugs" target="_blank">submit a bug report.</a>
        </li>
        <li>
            Internet Explorer 6 &amp; 7: we are no longer supporting these browsers. We do understand
            that some users still access our site with them. We'd like to <a href="https://www.surveymonkey.com/s/ComtradeUpgrade" target="_blank">hear more</a>
            about why you are unable to upgrade so that we can evaluate whether or not an alternative interface is
            required. You can access the data directly via the <a href="/data/doc/api/">data extraction API</a>.
        </li>
    </ul>
</p>
    </div>
<![endif]-->

<form class="ct-form ct-query-form" id="query-filter" role="form" method="post" target="_blank">
    <input type="hidden" name="max" value="500" />
    <input type="hidden" name="type" value="C" />
    <input type="hidden" name="previewMaxRecords" value="500" />
    <input type="hidden" name="downloadMaxRecords" value="50000" />

    <div class="row">
        <div class="col-md-12">
            <h2 class="ct-step-title">1. Frequency</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <fieldset class="ct-fs-compact">
                <label class="radio-inline">
                    <input type="radio" name="freq" id="freq-a" value="A" checked="checked" /> Annual
                </label>
                <label class="radio-inline">
                    <input type="radio" name="freq" id="freq-m" value="M" /> Monthly
                </label>
            </fieldset>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2 class="ct-step-title ct-classification-row">2. Classification</h2>
        </div>
    </div>
    <div class="row hide" id="ct-classifications-hidden-row">
        <div class="col-md-12">
            Monthly datasets may mix codes from multiple HS revisions and are provided as is except for standardization of trade flow and partner information, as well as conversion to U.S. dollars.
        </div>
    </div>
    <div class="row" id="ct-classifications-row">
        <div class="col-md-5">
            <fieldset class="ct-fs-compact">
                <legend><abbr title="Harmonized System">HS</abbr></legend>
                <label class="radio-inline">
                    <input type="radio" name="px" id="hs" value="HS" checked="checked" /> As reported
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="h0" value="H0" /> 92
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="h1" value="H1" /> 96
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="h1" value="H2" /> 02
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="h1" value="H3" /> 07
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="h1" value="H4" /> 12
                </label>
            </fieldset>
        </div>
        <div class="col-md-5">
            <fieldset class="ct-fs-compact">
                <legend><abbr title="Standard International Trade Classification">SITC</abbr></legend>
                <label class="radio-inline">
                    <input type="radio" name="px" id="st" value="ST" /> As reported <em><abbr title="Very few datasets submitted as SITC after 1993. Use revision 1 or check data availability if no data is returned.">*</abbr></em>
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="s1" value="S1" /> Rev. 1
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="s2" value="S2" /> Rev. 2
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="s3" value="S3" /> Rev. 3
                </label>
                <label class="radio-inline">
                    <input type="radio" name="px" id="s4" value="S4" /> Rev. 4
                </label>
            </fieldset>
        </div>
        <div class="col-md-2">
            <fieldset class="ct-fs-compact">
                <legend><abbr title="Broad Economic Categories">BEC</abbr></legend>
                <label class="radio-inline">
                    <input type="radio" name="px" id="bec" value="BEC" /> BEC
                </label>
            </fieldset>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2 class="ct-step-title">3. Select desired data</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <label id="ct-periods-lbl" for="periods">Periods (year)</label>
            <input id="periods" name="ps" type="hidden" class="ct-select2" data-placeholder="Select up to 5 periods." />
            <i><code>All</code> or a valid period. Up to 5 may be selected.</i>
        </div>
        <div class="col-md-3">
            <label for="reporters">Reporters <span class="reporterCodesType"></span></label>
            <input id="reporters" name="r" type="hidden" class="ct-select2" data-placeholder="Select up to 5 reporters." />
            <i><code>All</code> or a valid reporter. Up to 5 may be selected. <code>All</code> may only be used if a partner is selected.</i>
        </div>
        <div class="col-md-3">
            <label for="partners">Partners</label>
            <input id="partners" name="p" type="hidden" class="ct-select2" data-placeholder="Select up to 5 partners." />
            <i><code>World</code>, <code>All</code>, or a valid reporter. Up to 5 may be selected. <code>All</code> may only be used if a reporter is selected.</i>
        </div>
        <div class="col-md-3">
            <label for="tradeFlow">Trade flows</label>
            <input id="tradeFlow" name="rg" type="hidden" class="ct-select2" data-placeholder="Select trade flows." />
            <i><code>All</code> or select multiple trade flows.</i>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <label for="itemCodes"><span class="itemCodeType">Commodity</span> codes</label>
            <input id="itemCodes" name="cc" type="hidden" class="ct-select2" data-placeholder="Select up to 20 codes." />
            <i><code>All</code>, <code>Total</code>, <code>AG[X]</code> or a valid code. Up to 20 may be selected. If you know the code number, e.g. <code>01 - Live animals</code>, type <code>01</code>. To search by description type a word, e.g. <code>rice</code>.</i>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2 class="ct-step-title" id="step-preview">4. See the results</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <button type="button" id="preview" class="btn btn-success">
                Preview <span class="fa fa-angle-double-right"></span>
            </button>
            <button type="button" id="download-csv-top" class="btn btn-primary ct-download-csv"> 
                Download CSV <span class="fa fa-download"></span>
            </button>
            <p>
                <span class="ct-data-footnote">Issues opening CSV in Excel? <a href="http://office.microsoft.com/en-us/excel-help/import-or-export-text-txt-or-csv-files-HP010099725.aspx" target="_blank">See this Microsoft how-to.</a></span>
            </p>
        </div>
    </div>

    
    <input type="hidden" name="uitoken" value="202703c69e82428090660f0201033a59" />
</form>
<div id="preview-table-container">
    <div class="row">
        <div class="col-md-12">
            <hr />
            <h2 class="ct-step-title">5. Preview (<span id="displayed-records"></span>)</h2>
            <div class="ct-data-table-container">
                <table id="preview-table" class="ct-data-table ct-preview-table smalltext" style="width:100%"></table>
            </div>
        </div>
    </div>
    <hr class="ct-sectionbreak" />
    <div class="row">
        <div class="col-sm-6 hidden-xs">
            <span class="ct-data-footnote"><p>Estimated quantity/netweight shown in italics.</p>
<p>Flag refers to quantity/netweight estimation:</p>
<p>0 = no estimation, 2 = quantity, 4 = netweight, 6 = both quantity and netweight</p></span>
        </div>
        <div class="col-sm-6 hidden-xs">
            <div class="pull-right">
                <button type="button" class="btn btn-success btn-xs ct-scroll-top">
                    Modify selection <span class="fa fa-angle-double-up"></span>
                </button>
                <button type="button" id="download-csv-bottom" class="btn btn-primary btn-xs ct-download-csv">
                    Download CSV <span class="fa fa-download"></span>
                </button>
            </div>
        </div>
        <div class="col-xs-12 visible-xs">
            <button type="button" class="btn btn-success ct-scroll-top">
                Modify selection <span class="fa fa-angle-double-up"></span>
            </button>
            <button type="button" id="download-csv-bottom" class="btn btn-primary ct-download-csv">
                Download CSV <span class="fa fa-download"></span>
            </button>
            <br />
            <br />
        </div>
        <div class="col-xs-12 visible-xs">
            <span class="ct-data-footnote"><p>Estimated quantity/netweight shown in italics.</p>
<p>Flag refers to quantity/netweight estimation:</p>
<p>0 = no estimation, 2 = quantity, 4 = netweight, 6 = both quantity and netweight</p></span>
        </div>
    </div>
</div>
<div id="api-call-container">
    <hr class="ct-sectionbreak" />
    <div class="row">
        <div class="col-md-12">
            <span class="ct-data-footnote"><a href="#" id="view-api-call">View API call</a> | <a href="/data/Doc/API" title="API documentation">API documentation</a></span>
            <div id="api-call-alert">
                <span class="ct-data-footnote"></span>
<pre id="api-call" style="white-space:nowrap"></pre>
            </div>
        </div>
    </div>
</div>

<!--[if IE 8]>
    <div class="alert alert-danger">
        <h4>You are using a rather old browser...</h4>
        <p>
    <strong>Core supported browsers:</strong>
    The most recent 3 versions of Internet Explorer, Firefox, Google Chrome and Safari.
    In general the same applies to major mobile browsers, but display is altered
    to better fit small screen resolutions. Testing is most complete for the newest
    Android and iOS browsers.
</p>
<p>
    <strong>Partially supported browsers:</strong>
    <ul>
        <li>
            Internet Explorer 8: we understand many users are still running IE 8. Core features
            should work, but certain advanced features may be hidden / appear differently.
            If something fails please
            <a href="https://www.surveymonkey.com/s/comtradebugs" target="_blank">submit a bug report.</a>
        </li>
        <li>
            Internet Explorer 6 &amp; 7: we are no longer supporting these browsers. We do understand
            that some users still access our site with them. We'd like to <a href="https://www.surveymonkey.com/s/ComtradeUpgrade" target="_blank">hear more</a>
            about why you are unable to upgrade so that we can evaluate whether or not an alternative interface is
            required. You can access the data directly via the <a href="/data/doc/api/">data extraction API</a>.
        </li>
    </ul>
</p>
    </div>
<![endif]-->

    <br />
    <br />
    <br />

        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h4>Contact us</h4>
                    <ul>
                        <li><a href="http://unstats.un.org/unsd/trade/">Trade Statistics Branch</a></li>
                        <li><a href="http://unstats.un.org/">United Nations Statistics Division</a></li>
                        <li>Trade in commodities: <a href="mailto:comtrade@un.org">comtrade@un.org</a></li>
                        <li>Trade in services: <a href="mailto:tradeserv@un.org">tradeserv@un.org</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Follow us</h4>
                    <a href="http://twitter.com/untradestats"><img src="/data/img/twitter.png" alt="@UNTradeStats" border="0" height="20"></a>
                    <a href="http://facebook.com/untradestats"><img src="/data/img/facebook.png" alt="facebook.com/UNTradeStats" border="0" height="20"></a>
                </div>
                <div class="col-md-3">
                    <h4>Data services</h4>
                    <ul>
                        <li><a href="http://comtrade.un.org/labs/">UN Comtrade Labs</a></li>
                        <li><a href="http://unstats.un.org/unsd/tradekb/Knowledgebase/">Knowledge base</a></li>
                        <li><a href="http://comtrade.un.org/ws/">Production web services / API</a></li>
                        <li><a href="http://data.un.org/browse.aspx?d=ComTrade">Comtrade @ UN Data</a></li>
                        <li><a href="https://unp.un.org/comtrade.aspx">Premium access</a></li>
                        <li><a href="http://comtrade.un.org/db/">Legacy annual interface</a></li>
                        <li><a href="http://comtrade.un.org/monthly/">Legacy monthly interface</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>New interface <span class="badge">beta</span></h4>
                    <ul>
                        <li><a href="/data/doc/api/">Data extraction API</a></li>
                        <li><a href="/data/doc/browsers/">Browser support</a></li>
                        <li><a href="/data/doc/releasenotes/">Release notes</a></li>
                        <li><a href="https://www.surveymonkey.com/s/ComtradeAPI" target="_blank">Feedback (general)</a></li>
                        <li><a href="https://www.surveymonkey.com/s/ComtradeUpgrade" target="_blank">Feedback (API specific)</a></li>
                        <li><a href="https://www.surveymonkey.com/s/comtradebugs" target="_blank">Report a bug</a></li></ul>
                </div>
            </div>
            <hr class="sectionbreak" />
            <div class="row">
                <div class="col-lg-12 copyright">
                    <p>
                        <a href="http://unstats.un.org/unsd/copyright.htm" class="darkgray">Copyright © United Nations 2015</a> |
                        <a href="http://comtrade.un.org/db/help/uReadMeFirst.aspx">Data readme</a> |
                        <a href="http://comtrade.un.org/db/help/PolicyOnUseAndRedissemination.pdf">Policy on use and re-dissemination</a> |
                        <a href="http://comtrade.un.org/db/help/LicenseAgreement.aspx">License agreement</a>
                        <br />
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <script src="/data/bundles/jquery?v=lAWanvxuK91VI6uSCdWzhvtofm0aK0rptSpK6X6X2d01"></script>

    <script src="/data/bundles/d3?v=8zIY-pGY4I4midoIVp3GDa9DOgjxh_NfPwUytYsesFg1"></script>

    <script src="/data/bundles/bootstrap?v=QNfNWLmiA7CMoTJ1-FhQiJyLPFhq7ih1h0fJOCadmtg1"></script>

    <script src="/data/bundles/blockUI?v=7OJDeRgvypHMugWvE31ZN5uLmPam__PSOUss_Gn8D6I1"></script>

    <script src="/data/bundles/select2?v=G0LTS19vkNggBYoo744iySsXPA03-NEAGBLQZy8cDMA1"></script>

    <script src="/data/bundles/datatable?v=XS2Qg7AtIRBdfCIAKU1Ipa1zLZQ2iNlJLgQ7JA7HK9g1"></script>

    <script src="/data/bundles/comtrade?v=j_307ixyKZmoZ1seOGD7GRPRj2RB_YcOXfVyrk9GNGo1"></script>

    <!-- Google Analytics -->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-9648243-1', 'un.org');
    ga('require', 'linkid', 'linkid.js');
    ga('send', 'pageview');

</script>
<!-- End Google Analytics -->
    
<script type="text/javascript">
    /*
    * Page specific utility functions
    */
    // function to handle change classification
    Comtrade.reportersCanChange = false;        
    Comtrade.reportersInitialized = false;
    Comtrade.classificationRefreshInitialized = false;
    Comtrade.currentClassCode = "";
    Comtrade.previousClassCode = "";
    Comtrade.classificationRefresh = function (classCode) {
        Comtrade.blockUI('<img src="/data/img/spinner.gif" alt="Please wait..." />');
        var url = "/data/cache/classification" + classCode + ".json";
        var jqxhr = $.ajax({
            url: url,
            dataType: "json"
        })
        .done(function (data, textStatus) {
            if ($("#itemCodes").select2) {
                $("#itemCodes").select2("val", "");
                $("#itemCodes").select2("destroy");
            } // remove previous box and clear previous values
            $("#itemCodes").select2({
                data: data,
                width: "resolve",
                multiple: true,
                closeOnSelect: true,
                maximumSelectionSize: 20,
                minimumInputLength: data.minimumInputLength,
                closeOnSelect: false,
                // this is a big search, so override default behavior
                // below matcher requires string to match from beginning to end
                matcher: function (term, text) {
                    if (Comtrade.isNumber(term) ||
                        (term.length <= 2 && (term.toUpperCase().indexOf('T') == 0 || term.toUpperCase().indexOf('A') == 0))
                        ) {
                        // if the search term is a number, we're looking at a classification code
                        // as such restrict to perfect matches from the beginning of the string (e.g. "10" won't match "0109")
                        // phrases starting with a "T" or "A" use this method to - so "total" and "all" match until you type them
                        // out longer
                        return text.toUpperCase().indexOf(term.toUpperCase()) == 0;
                    }
                    else {
                        // not a number, so allow default matcher to run, here we're fine with having "rice" match anywhere in the text
                        return text.toUpperCase().indexOf(term.toUpperCase()) >= 0;
                    }
                }
            });
            $(".itemCodeType").html(data.className + " commodity");

            $("#itemCodes").val("TOTAL").trigger("change");
        })
        .fail(function (jqXHR, textStatus, errorThrown) {
            $("#itemCodes").parent().prepend("<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>Error getting codes.</div>");
        })
        .always(function () {
            Comtrade.classificationRefreshInitialized = true; // once this has happened for the first time
            $.unblockUI();
        });
    }

    Comtrade.dataFrequencyChange = function (freqCode) {
        if (freqCode == 'M') {
            Comtrade.dataFrequencySetMonthly();
        }
        else {
            Comtrade.dataFrequencySetAnnual();
        }
    }

    // default case: set the frequency to report annual data
    Comtrade.dataFrequencySetAnnual = function () {
        Comtrade.blockUI('<img src="/data/img/spinner.gif" alt="Please wait..." />');
        $("#periods").select2('destroy');

        // change the periods label
        $("#ct-periods-lbl").html("Periods (loading...)");

        // display classification information
        $("#ct-classifications-hidden-row").addClass("hide");
        $("#ct-classifications-row").removeClass("hide");

        // periods
        var jqxhr = $.ajax({
            url: "/data/cache/years.json",
            dataType: "json"
        })
        .done(function (data) {
            $("#periods").select2({
                data: data,
                width: "resolve",
                multiple: true,
                closeOnSelect: true,
                maximumSelectionSize: 5,
                minimumInputLength: 0
            });
            // set default - should be the second value, meaning the first period after "all"
            if (typeof (data.results[1]) === "object" && typeof (data.results[1].id) != "undefined") {
                $("#periods").select2("data", { id: data.results[1].id, text: data.results[1].text });
            }

            // change the periods label
            $("#ct-periods-lbl").html("Periods (year)");
        })
        .always(function () {
            $.unblockUI();
        });
    }

    // set the frequency to report monthly data
    Comtrade.dataFrequencySetMonthly = function () {
        Comtrade.blockUI('<img src="/data/img/spinner.gif" alt="Please wait..." />');
        $("#periods").select2('destroy');
        $("#ct-periods-lbl").html("Periods (loading...)");

        // after freq. change is done, need to also switch to classification "HS" since that is all monthly supports
        if (Comtrade.classificationRefreshInitialized) {
            $('#hs').prop("checked", true);
            Comtrade.classificationRefresh("HS");
        }

        // disable classification selection; on HS is valid
        $("#ct-classifications-hidden-row").removeClass("hide");
        $("#ct-classifications-row").addClass("hide");

        // change the periods
        var jqxhr = $.ajax({
            url: "http://comtrade.un.org/api/refs/da/monthly/periods/list",
            dataType: "json"
        })
        .done(function (data) {
            // transform to select2 syntax
            var dataForS2 = [];
            var lastYear = "";
            var thisYear = "";
            dataForS2.push({ "id": "all", "text": "All" });
            for (var i = 0; i < data.length; i++) {
                thisYear = data[i].period.substring(0, 4);
                // detect a new year and add an "all" case
                if (lastYear !== thisYear) {
                    if (data[i].period.substring(4, 6) === "12") {// simple case: full year of data
                        dataForS2.push({ "id": thisYear, "text": "All of " + thisYear });
                    }
                    else {
                        dataForS2.push({ "id": thisYear, "text": "All of " + thisYear + " (thru " + data[i].periodDesc.substring(0, 3) + ")" });
                    }
                }
                dataForS2.push({ "id": data[i].period, "text": data[i].periodDesc });
                lastYear = data[i].period.substring(0, 4);
            }

            data = { "more": false, "results": dataForS2 };

            $("#periods").select2({
                data: { "more": false, "results": dataForS2 },
                width: "resolve",
                multiple: true,
                closeOnSelect: true,
                maximumSelectionSize: 5,
                minimumInputLength: 0
            });

            // set default - should be the second value, meaning the first period after "all"
            if (typeof (data.results[1]) === "object" && typeof (data.results[1].id) != "undefined") {
                $("#periods").select2("data", { id: data.results[2].id, text: data.results[2].text });
            }

            // change the periods label
            $("#ct-periods-lbl").html("Periods (year, month)");
        })
        .always(function () {
            $.unblockUI();
        });
    }

    Comtrade.reportersRefresh = function(classCode)
    {
        // handle all cases where we don't want to trigger the ajax call

        // if reporters already initialized and can't change (matrix is disabled) then don't bother refreshing them
        if (Comtrade.reportersInitialized && !Comtrade.reportersCanChange) {
            return;
        }

        // don't load if no change in classCode
        if (Comtrade.reportersInitialized && classCode == Comtrade.previousClassCode) {
            return; 
        }

        // don't load if we're not switching to/from the matrix
        if (Comtrade.reportersInitialized && classCode != "SS" && Comtrade.previousClassCode != "SS") {
            return;
        }

        var url = "/data/cache/reporterAreas.json";

        $(".reporterCodesType").html(" (loading...)");

        // SS - matrix - can have World as a reporter
        if(classCode == "SS") {
            url = "/data/cache/reporterAreasSS.json";
        }

        // load reporters
        var jqxhr = $.ajax({
            url: url,
            dataType: "json"
        })
        .done(function (data) {
            if ($("#reporters").select2) {
                $("#reporters").select2("val", "");
                $("#reporters").select2("destroy");
            } // remove previous box and clear previous values

            $("#reporters").select2({
                data: data,
                width: "resolve",
                multiple: true,
                closeOnSelect: true,
                maximumSelectionSize: 5,
                minimumInputLength: 0
            });
            $("#reporters").select2("data", { id: "all", text: "All" });

            $(".reporterCodesType").html(classCode == "SS" ? " (w/ World)" : "");
            Comtrade.reportersInitialized = true;
        });
    }

    /*
    * Load
    */
    $(document).ready(function () {
        $('#preview-table-container').hide();
        $('#api-call-container').hide();
        $('#api-call-alert').hide();

        var dataTableHtml = '<table id="preview-table" class="ct-data-table ct-preview-table smalltext" style="width:100%"></table>';

        // initialize periods to annual
        Comtrade.dataFrequencyChange('A');

        // trade regimes
        var jqxhr = $.ajax({
            url: "/data/cache/tradeRegimes.json",
            dataType: "json"
        })
        .done(function (data) {
            $("#tradeFlow").select2({
                data: data,
                width: "resolve",
                multiple: true,
                closeOnSelect: true,
                maximumSelectionSize: 5,
                minimumInputLength: 0
            });
            $("#tradeFlow").select2("data", { id: "all", text: "All" });
        })

        // partners
        var jqxhr = $.ajax({
            url: "/data/cache/partnerAreas.json",
            dataType: "json"
        })
        .done(function (data) {
            $("#partners").select2({
                data: data,
                width: "resolve",
                multiple: true,
                closeOnSelect: true,
                maximumSelectionSize: 5,
                minimumInputLength: 0
            });
            // set default
            $("#partners").select2("data", { id: "0", text: "World" });
        })

        // set initial classification and reporters value
        var classCode = $('input[name=px]:checked', '#query-filter').val();
        Comtrade.currentClassCode = classCode;
        Comtrade.reportersRefresh(classCode)
        Comtrade.classificationRefresh(classCode);

        // when classification changes, run refresh
        $('input[name=px]').on('change', function (e) {
            Comtrade.previousClassCode = Comtrade.currentClassCode;
            Comtrade.currentClassCode = this.value;
            Comtrade.reportersRefresh(this.value);
            Comtrade.classificationRefresh(this.value);
        });

        // when data frequency changes, run refresh
        $('input[name=freq]').on('change', function (e) {
            Comtrade.dataFrequencyChange(this.value);
        });

        // ajax call for preview
        $('#preview').on('click', function (e) {
            e.preventDefault();
            Comtrade.getPreviewData('http://comtrade.un.org/api/get', '#query-filter', '<img src="/data/img/spinner.gif" alt="Please wait..." />', '#preview-table', '#preview-table-container', dataTableHtml)
        });

        // new windows call for download
        $('.ct-download-csv').on('click', function (e) {
            e.preventDefault();
            Comtrade.getDownloadData('http://comtrade.un.org/api/get', '#query-filter', '<img src="/data/img/spinner.gif" alt="Please wait..." />', '#preview-table', '#preview-table-container')
        });

        // all changes to data should destroy the preview
        $('#query-filter input, #query-filter select').on('change', function (e) {
            Comtrade.destroyPreview('#preview-table-container', dataTableHtml);
        });

        $('#view-api-call').on('click', function (e) {
            e.preventDefault();
            if ($("#api-call-alert").is(":visible") == false) { $("#api-call-alert").show(); }
            else { $("#api-call-alert").hide(); }
        });

        // we've finished the first load of the page
        Comtrade.finishedInitialLoad = true;
    });
</script>

    <script>
        $(document).ready(function () {
            $('#ct-bug-tab').tooltip();
        });
    </script>
</body>
</html>
