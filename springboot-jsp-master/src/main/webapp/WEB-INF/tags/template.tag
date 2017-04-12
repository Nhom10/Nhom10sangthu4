<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0031)http://icsse2017.hcmute.edu.vn/ -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
	WELCOME TO ICSSE 2017
</title><link href="./WELCOME TO ICSSE 2017_files/show_img.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="./WELCOME TO ICSSE 2017_files/jquery-1.7.2.min.js"></script>
    <script src="./WELCOME TO ICSSE 2017_files/Common.js" type="text/javascript"></script>
    <script src="./WELCOME TO ICSSE 2017_files/PagingContent.js" type="text/javascript"></script>
<link rel="shortcut icon" type="image/png" href="http://icsse2017.hcmute.edu.vn/Resources/Imagephoto/logo.png"><link href="./WELCOME TO ICSSE 2017_files/lightbox.css" rel="stylesheet" type="text/css">
    <script src="./WELCOME TO ICSSE 2017_files/lightbox.min.js" type="text/javascript"></script>
    <link href="./WELCOME TO ICSSE 2017_files/search_Article.css" rel="stylesheet">
    <script language="javascript" type="text/javascript">
        function SearchProcess(event) {
            if (event.keyCode == 13) {
                OnSearch(document.getElementById('txtSearchArticle').value);
                return false;
            }
            return true;
        }
        function OnSearch(query) {
            PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
        }

        function OnSearchSuccess(results, context, methodName) {
            var position = results.indexOf('_');
            totalRecords = results.substring(0, position);
            results = results.substring(position + 1);
            LoadContentAndPaging(results);
        }
        function OnSearchFailed(results, context, methodName) {
        }

        function retitleUrl(str) {
            str = str.replace(/^\s+|\s+$/g, ''); // trim
            str = str.toLowerCase();
            // remove accents, swap ñ for n, etc
            var from = "àáảãạăằắẳẵặâầấẩẫậđèéẻẽẹêềếểễệìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ·/_,:;";
            var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
            for (var i = 0, l = from.length ; i < l ; i++) {
                str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
            }
            str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
              .replace(/\s+/g, '-') // collapse whitespace and replace by -
              .replace(/-+/g, '-'); // collapse dashes
            return str;
        };

        function popunder() {
            $('a').not('[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]').each(function () {
                $(this).attr('href', function (index, value) {
                    if (value != undefined) {
                        var index = value.indexOf("Default.aspx");
                        if (index >= 0)
                            return value = "/" + value.substring(index, value.length);
                    }
                });
            });
            var articleId = '' != '' ? '' : '';
            var topicId = '' != '' ? '' : '';
            var moduleId = '' != '' ? '' : '';
            if (articleId != '') {
                if (window.history.state == null) {
                    if (articleId.indexOf("/") > -1)
                        articleId = articleId.substr(0, articleId.indexOf("/"));
                    window.history.replaceState({ ArticleId: articleId }, "ArticleId", "/ArticleId/" + articleId + "/" + retitleUrl(''));
                }
            }
            if (topicId != '') {
                if (window.history.state == null) {
                    if (topicId.indexOf("/") > -1)
                        topicId = topicId.substr(0, topicId.indexOf("/"));
                    window.history.replaceState({ TopicId: topicId }, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
                }
            }
            
        }
    </script>

<link href="./WELCOME TO ICSSE 2017_files/WebResource.axd" type="text/css" rel="stylesheet" class="Telerik_stylesheet"><link href="./WELCOME TO ICSSE 2017_files/WebResource(1).axd" type="text/css" rel="stylesheet" class="Telerik_stylesheet"><link href="./WELCOME TO ICSSE 2017_files/WebResource(2).axd" type="text/css" rel="stylesheet" class="Telerik_stylesheet"></head>
<body>
<div id="body">
      <jsp:doBody/>
    </div>
</body>
</html>
