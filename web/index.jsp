<%@ page import="poc.Webproj" %>
<%--
  Created by IntelliJ IDEA.
  User: clement
  Date: 02/11/14
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="store">
<head>
    <title>Poc jee angular twitter</title>
    <link rel="stylesheet" href="dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="dist/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="styles.css"/>
    <!--script type="text/javascript" src="angular.min.js"></script-->
    <script type="text/javascript" src="dist/js/lodash.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.5/angular.js"></script>
    <script type="text/javascript" src="app.js"></script>
    <h1>Appli de test</h1>
</head>
<body>
<nav class="navbar-text">
    <ul>
        Mon menu de navigation
        <li><a href="#"> fonction 1</a></li>
        <li><a href="#"> fonction 2</a></li>
    </ul>
</nav>
<section class="mainSection">

    <div class="mainSection">
        simple div
    </div>
    <div ng-controller="sayHello as say" class="mainSection">
        text : {{say.data.text}}<br>
        <em ng-repeat="word in say.phrase" class="pull-left">{{word}}</em>

        <ul>
            <h4>tags</h4>
            <li ng-repeat="tag in say.data.tags">
                <blockquote>
                    <strong>title: {{tag.title}} </strong><br>
                    short name: {{tag.name}}
                    <cite class="clearfix">—</cite>
                </blockquote>
            </li>
        </ul>

        <form name="searchElementForm" ng-controller="MediaController as mediaCtrl" ng-submit="mediaCtrl.search(mediaCtrl.newtag.name)">

            <!--  Live Preview -->
            <ul>
                <h4>results</h4>
                <p ng-show="mediaCtrl.bfound">A été trouvé:</p>
                <blockquote>
                    <strong>title:{{mediaCtrl.newtag.title}} </strong>
                    short name: {{mediaCtrl.newtag.name}}
                    <cite class="clearfix">—</cite>
                </blockquote>
            </ul>
            <fieldset class="form-group">
                <input ng-model="mediaCtrl.newtag.name" class="form-control"
                       placeholder="Write a short review of the element..."
                       title="Review"></textarea>
            </fieldset>
            <fieldset class="form-group">
                <input type="submit" class="btn btn-primary pull-right" value="Submit Review"/>
            </fieldset>
        </form>
    </div>
</section>
<section class="mainSection">
    <h3 class="message"><%=Webproj.getMessage()%>
    </h3>
</section>
</body>
</html>
