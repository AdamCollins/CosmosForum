﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default"  EnableEventValidation="false" %>

<%@ Register Src="~/Controls/PostControl.ascx" TagPrefix="uc1" TagName="PostControl" %>
<%@ Reference Control="~/Controls/PostControl.ascx" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#52FFB8" />
    <title>COSMOS: Go Explore</title>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!--Materialize-->
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
     <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
    <!--Icons-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--MyStyleSheets-->
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="loading">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="lds-harmony spinner" width="200px" height="200px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><g transform="translate(50,50)">
        <g transform="scale(1)">
        <g transform="translate(-50,-50)">
        <g transform="rotate(202.179 50 50)">
        <animateTransform attributeName="transform" type="rotate" repeatCount="indefinite" values="360 50 50;180 50 50;0 50 50" keyTimes="0;0.5;1" dur="0.8s" keySplines="0.7 0 0.3 1;0.7 0 0.3 1" calcMode="spline"/>
        <path fill="#52ffb8" d="M42.9,17.8c-1.4-5.4,1.9-11,7.3-12.4c0.6-0.2,1.3-0.3,1.9-0.3l0.8,0l0,0c4-0.2,8,0.1,11.9,1.1 c3.6,0.9,7.2,2.5,10.6,4.7c3.3,2.2,6.2,4.8,8.4,7.6c2.3,3,4.2,6.2,5.4,9.7c0.3,0.9,0.6,1.8,0.9,2.7c0.2,0.9,0.4,1.8,0.6,2.7l0.1,0.6 l0.4,3.4c0,0.3,0,0.6,0,0.9l0,1.8c0,0.4,0,0.8,0,1.2c-0.1,0.9-0.2,1.8-0.2,2.7c-0.3,2-0.6,3.6-1.2,5.2c-1.1,3.5-2.6,6.6-4.6,9.3 c-2,2.8-4.4,5.2-7.1,7.2c-0.2,0.2-0.5,0.3-0.7,0.5c-0.5,0.3-1,0.7-1.4,0.9l-2.3,1.3c-1.6,0.7-3.1,1.4-4.6,1.8 c-3.3,1-6.6,1.5-9.6,1.4c-3.2-0.1-6.4-0.7-9.3-1.7c-2.9-1.1-5.6-2.6-8-4.5l-1.1-0.9c-0.2-0.2-0.4-0.3-0.6-0.5l-1.6-1.6 c-1.6-1.8-3-3.8-4.1-5.9c1.4,1.9,3.1,3.5,4.9,5c0.8,0.6,1.7,1.3,2.6,1.8l1.1,0.6c2.5,1.3,5.1,2.2,7.9,2.8c2.6,0.4,5.4,0.4,8,0 c2.4-0.3,5-1.2,7.5-2.4c1.1-0.5,2-1.1,2.9-1.7l1.9-1.5c0.3-0.3,0.6-0.6,0.9-0.8c0.1-0.1,0.3-0.3,0.4-0.4l0.1-0.1 c1.7-1.8,3.1-3.8,4.2-6.1c1-2.1,1.6-4.4,1.9-6.8c0.2-1,0.2-2,0.1-2.8l0-0.6l0-0.3c-0.1-0.5-0.1-1-0.1-1.4c0-0.4-0.1-0.8-0.2-1.1 l-0.2-1c0-0.2-0.1-0.3-0.1-0.5L78,37.7l-0.4-1c-0.2-0.4-0.4-0.9-0.6-1.3L77,35.1c-0.2-0.4-0.5-0.8-0.7-1.2l-0.1-0.1 c-1.1-1.8-2.5-3.5-4.1-4.9c-1.5-1.3-3.2-2.4-5.4-3.2c-2.1-0.8-4-1.2-5.8-1.3C53.9,24.2,45.5,27.5,42.9,17.8z"/>
        <path fill="#615756" d="M33.2,74.3c-2.1-0.9-3.9-1.9-5.4-3.2c-1.6-1.4-3-3-4.1-4.9l-0.1-0.1c-0.2-0.4-0.4-0.8-0.7-1.2l-0.1-0.3 c-0.2-0.4-0.4-0.9-0.6-1.3c-3.2-8.4-0.9-17.9,5.7-24.1c9-8.4,22.7-8,32.3-0.9c1.8,1.5,3.5,3.1,4.9,5c-1.1-2.2-2.5-4.1-4.1-5.9 C44.8,20.4,17,28.7,10.2,50.4c-0.5,1.6-0.8,3.2-1.2,5.2c-0.1,0.9-0.2,1.8-0.2,2.7c0,0.4,0,0.8,0,1.2l0,1.9c0,0.3,0,0.6,0,0.9 l0.4,3.4l0.1,0.6c0.2,0.9,0.4,1.8,0.6,2.7c0.3,0.9,0.6,1.8,0.9,2.7c1.3,3.5,3.1,6.7,5.4,9.7c2.2,2.9,5.1,5.4,8.4,7.6 c3.4,2.2,7,3.8,10.6,4.7c3.8,1,7.8,1.4,11.9,1.1l0,0l0.8,0c0.6,0,1.3-0.1,1.9-0.3c2.6-0.7,4.8-2.4,6.2-4.7c1.4-2.3,1.8-5.1,1.1-7.7 c-1.4-5.4-7-8.7-12.4-7.3c-1.9,0.5-3.7,0.7-5.6,0.6C37.3,75.5,35.3,75.1,33.2,74.3z"/>
        </g></g></g></g></svg></div>
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
        <div class="header">
            <h1>COSMOS</h1>
            <div class="loginmenu" >
                <a href="javascript:void(0);"><p class="loginmenu"><%=(((bool)Session["loggedIn"]==true)?Session["username"]:"Login") %><i class="material-icons right">arrow_drop_down</i></p></a>
                <ul class="loginmenu dropdown hidden">
                    <li><a href="javascript:void(0);" id='loginMenuBtn'>Login</a></li>
                    <li><a href="javascript:void(0);">Register</a></li>
                    <li><asp:LinkButton ID="LogoutButton" OnClick="LogoutButton_Click" runat="server">Logout</asp:LinkButton></li>
<%--                    <%= (Session["loggedIn"]!=null)?
                          "<li id='logoutMenuBtn'>Logout</li>"
                          :
                          "<li id='loginMenuBtn'>Login</li>" +
                          "<li>Register</li>";
                      %>--%>
                    
                </ul>
            </div>
        </div>
        

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
                        <a href="javascript:void(0);" class="exit-btn"><i class="Medium material-icons exit-btn">exit_to_app</i></a>
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

        <asp:Panel ID="RegisterMenu" CssClass="commentOverlay hidden" runat="server">
            <asp:Panel ID="Panel2" CssClass="submitPanel row" runat="server">
                <div class="col m3"></div>
                <div class="col s12 m6 commentField">
                     <div class="input-field col s12">
                         <!--Fix later-->
                        <a href="javascript:void(0);" id="test" style="margin-bottom:-150px;" class="exit-btn"><i class="Medium material-icons exit-btn">exit_to_app</i></a>
                    </div>
                    <div class="row register-page"> 
                        <h4 class="col s12">Login/Register</h4>
                        <div class="input-field col s12 m6">
                          <asp:TextBox ID="usernameTF" type="email" maxlength="12" autocomplete="off"  runat="server"></asp:TextBox>
                          <label for="usernameTF">Username</label>
                        </div>
                        <div class="input-field col s12 m6">
                          <asp:TextBox ID="passwordTF" type="password" autocomplete="off" maxlength="40" runat="server"></asp:TextBox>
                          <label for="password">Password</label>
                        </div>
                    <div class="input-field col s12 m6">
                        <asp:TextBox ID="passwordCongTF" type="password" autocomplete="off" maxlength="40"  runat="server"></asp:TextBox>
                          <label for="passwordconf">Confirm Password</label>
                        </div>
                        <div class="col m6"></div>
                        </div>
                    <row>
                        <div class="col s12 m6"></div>
                        <div class="reglog-btngroup col s12 m6">
                            <div class="row">
                            <asp:LinkButton ID="LoginBtn" CssClass="btn waves-effect waves-light col s6 m3" type="submit" OnClick="LoginBtnButton_Click" runat="server">Login</asp:LinkButton>
                            <asp:LinkButton ID="RegisterBtn" CssClass="btn waves-effect waves-light col s6 m3" type="submit" OnClick="RegisterButton_Click" runat="server">Register</asp:LinkButton>
                        </div>
                            </div>
                    </row>
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
         document.onLoad = $(".loading").fadeOut(800);
         document.onLoad = posts.fadeIn(1200);
         
         $("#CommentArea").hide().removeClass("hidden");
         $('.exit-btn').click(function () {
             $("#CommentArea").fadeOut(300);
             $("#RegisterMenu").fadeOut(300);
         });
         $('a.OpenReplyWindowBtn').click(function (e) {

             $("#CommentArea").fadeIn(300);
             //post_id of post being commented on
             var post_id = $(this).parents("div.post").children("span.post_id").eq(0).text();
             console.log(post_id);
             document.getElementById("<%=Post_id.ClientID%>").value = post_id;
         });

         var dropdown = $("div.loginmenu");
         $(".loginmenu.dropdown").hide();
         $(".loginmenu.dropdown").removeClass("hidden");
         dropdown.click(function () {
             $(".loginmenu.dropdown").toggle(100);
         });

         $("#RegisterMenu").hide().removeClass("hidden");
         $("#loginMenuBtn").click(function (e) {

             $("#RegisterMenu").fadeIn(300);
         });


         $("#passwordCongTF").keypress('keyup', function () {
             console.log("change made")
             console.log($(this).text());
             if ($(this).val() == ($("#passwordTF").val()))
             {
                 $(this).addClass("valid");
                 $("#passwordTF").addClass("valid");
             }
         });

    </script>
</html>