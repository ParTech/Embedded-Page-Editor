<%@ Page Language="C#" AutoEventWireup="true" Debug="true" %>
<script runat="server" language="C#">

    /// <summary>
    /// This script file is called by the Sitecore Content Editor application as an item Editor.
    /// Item Editors are the tabs in the Content Editor that are displayed when an item was selected in the tree.
    /// 
    /// The script will embed the Page Editor in an iframe.
    /// In IE and FireFox there were some visibility issues and therefore some extra JavaScript is executed.
    /// 
    /// ---
    /// Brought to you by Ruud van Falier, ParTech IT
    /// 
    /// Twitter: @BrruuD
    /// Twitter: @ParTechIT
    /// 
    /// Web: http://www.partechit.nl
    /// </summary>
    public string GetPageEditorUrl()
    {
        // Determine the URL for the original Page Editor
        string id = Request.QueryString["id"];
        string language = Request.QueryString["language"];
        
        string pageEditorUrlFormat = "{0}://{1}/?sc_mode=edit&sc_itemid={2}&sc_lang={3}";
        string pageEditorUrl = string.Format(pageEditorUrlFormat, Request.Url.Scheme, Request.Url.Host, id, language);

        return pageEditorUrl;
    }
    
</script>

<!DOCTYPE html>
<html style="height: 100%">
    <body style="height: 100%">
        
        <iframe src="<% = GetPageEditorUrl() %>" id="PageEditorFrame" width="100%" height="100%" frameborder="no" marginwidth="0" marginheight="0">
        </iframe>

        <script>
            window.onload = function () {
                // Locate the DOM elements that we need to manipulate
                var iframe = document.getElementById("PageEditorFrame");
                var iframeDocument = iframe.contentDocument ? iframe.contentDocument : iframe.contentWindow.document;

                var ribbonIFrame = iframeDocument.getElementById("scWebEditRibbon");
                var ribbonIFrameDocument = ribbonIFrame.contentDocument ? ribbonIFrame.contentDocument : ribbonIFrame.contentWindow.document;

                var navigator = ribbonIFrameDocument.getElementById("Ribbon").getElementsByClassName("scRibbonNavigator")[0];

                // Fix ribbon heights
                iframeDocument.getElementById("scCrossPiece").style.height = "102px";
                ribbonIFrame.style.height = "102px";

                // Fix the position of the ribbon navigator (the Home, Advanced, Experience links)
                navigator.style.marginLeft = "80px";
            };
        </script>

    </body>
</html>
