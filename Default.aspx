﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default"  EnableEventValidation="false" %>

<%@ Register Src="~/Controls/PostControl.ascx" TagPrefix="uc1" TagName="PostControl" %>
<%@ Reference Control="~/Controls/PostControl.ascx" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!--Materialize-->
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
    <%--<link href="css/materialize.css" rel="stylesheet" />--%>
     <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
    <!--Icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--MyStyleSheets-->
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <%--<img src="loading.gif" style="position:absolute" />--%>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
        <h1>COSMOS</h1>
            <div class="row">
                <div class="col m3 hide-on-small-only"></div>
                <div class="col m6 s12">
                <asp:Panel ID="SubmitPanel" CssClass="submitPanel" runat="server">
                        <div class="row">
                            <div class="input-field col s12">
                                <asp:TextBox ID="SubmitText" CssClass="materialize-textarea" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <label for="SubmitText">What's on your mind?</label>
                            </div>

                            <asp:LinkButton ID="submitButton" CssClass="btn waves-effect waves-light" type="submit" OnClick="SubmitButton_Click" runat="server">Submit
                            <i class="material-icons right">send</i></asp:LinkButton>
                         </div>
                </asp:Panel>
                </div>
            <div class="col m3 hide-on-small-only"></div>
        </div>


        <asp:Panel ID="CommentArea" CssClass="commentOverlay hidden" runat="server">
            <asp:Panel ID="CommentPanel" CssClass="submitPanel row" runat="server">
                <div class="col m3"></div>
                <div class="col s12 m6 commentField">
                    <div class="input-field col s12">
                        <a href="javascript:void(0);" id="ExitReplyScreen" class="exit-btn"><i class="Medium material-icons exit-btn">exit_to_app</i></a>
                        <asp:TextBox ID="CommentTextBox" CssClass="materialize-textarea" TextMode="MultiLine" runat="server"></asp:TextBox>
                        <label for="CommentTextBox">Reply to Post!</label>
                    </div>

                    <asp:LinkButton ID="SubmitComment" CssClass="btn waves-effect waves-light" type="submit" OnClick="SubmitCommentButton_Click" runat="server">Reply
                    <i class="material-icons right">chat_bubble</i></asp:LinkButton>
                <asp:HiddenField ID="Post_id" Value="-1" runat="server" />
                </div>
                <div class="col m3"></div>
            </asp:Panel>
        </asp:Panel>



        <asp:Panel ID="PostsPanel" CssClass="row" runat="server">
        </asp:Panel>
    </div>
    </form>
</body>
     <script type="text/javascript">
         //Put your JavaScript code here.
         var posts = $('div.post').hide();
         posts.removeClass("hidden");
         document.onload = posts.fadeIn(1200);
         $("#CommentArea").hide().removeClass("hidden");
         $('#ExitReplyScreen').click(function () { $("#CommentArea").fadeOut(300); });
         $('a.OpenReplyWindowBtn').click(function (e) {

             $("#CommentArea").fadeIn(300);
             //post_id of post being commented on
             var post_id = $(this).parents("div.post").children("span.post_id").eq(0).text();
             console.log(post_id);
             document.getElementById("<%=Post_id.ClientID%>").value = post_id;
         });

    </script>
</html>