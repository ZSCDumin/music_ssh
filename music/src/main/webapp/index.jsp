<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		
		<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="font/iconfont.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/angular.min.js"></script>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		
		<title>网艺云音乐</title>
		<style>
				@font-face {font-family: 'iconfont';
                  src: url('font/iconfont.eot'); /* IE9*/
                  src: url('font/iconfont.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
                  url('font/iconfont.woff') format('woff'), /* chrome、firefox */
                  url('font/iconfont.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
                  url('font/iconfont.svg#iconfont') format('svg'); /* iOS 4.1- */
               }
               
               .iconfont{font-family:"iconfont" !important;
                      font-style:normal;
                      -webkit-font-smoothing: antialiased;
                      -webkit-text-stroke-width: 0.05rem;
                      }
                      
                  
			.head{
				height: 6rem;
				background: #DD0000;
				line-height: 6rem;
			}
			
			.logo{
				color: white;
				font-size: 2.5rem;
				padding-left: 1.5rem;
			}
			
			.logo-msc{
				font-size: 2.9rem;
			}
			
			.input-div{
				margin-top: 1.7rem;
				width: 20rem;
				height: 2.6rem;
				background: #BB0000;
				line-height: 2.6rem;
				padding-left:15px ;
				padding-right: 15px;
				border-radius: 15px;
			}
			
			.input{
				width: 80%;
				height:100%;
				outline: none;
				font-size: 1.5rem;
				border: none;
				background: #BB0000;
				color: white;
			}

			.search{
				height:100%;
				cursor: pointer;
				padding-left: 15px;
				text-align: right;
				color: #C1C1C1;
				font-size: 1.8rem;
			}
			
			.search:hover{
				color: #F1F1F1;
			}
			
			.login-div{
				color: white;
				text-align: end;
				padding-right: 7rem;
				
			}
			
			.login{
				cursor: pointer;
			}
			
			.login >a{
				color: #fff;
			}
			.content{
				
			}
			
			.content-left{
				background: #f3f3f3;
				border-right: 1px solid #ccc;
			}
			
			.cl-item{
				cursor: pointer;
				height: 4rem;
				line-height: 4rem;
				margin-left: -15px;
				margin-right: -15px;
				color: #666;
				padding-left: 20px;
			}
			
			.cl-item:hover{
				color: #000000;
			}
			
			.active{
				background: #e8e8e8;
				padding-left: 15px;
				border-left: 5px #DD0000 solid;
			}
			
			.cl-manage{
				background: #f3f3f3;
				height: 3rem;
				line-height: 3rem;
				margin-left: -15px;
				margin-right: -15px;
				color: #666;
				padding-left: 10px;
				cursor:default;
			}
			
			.block-1{
				height: 1rem;
			}
			.manage-icon{
				
				padding-right: 10px;
				font-size: 2rem;
			}
			
			.play-bar{
				position: fixed;
				bottom: 0px;
				height:5rem;
				width: 100%;
				background: rgba(0,0,0,0.9);
				line-height: 5rem;
			}
			
			.play-btn{
				font-size: 3.5rem;
				color: white;
				position: relative;
				left:14rem;
				margin-left: 28px;
				margin-right: 28px;
				cursor: pointer;
			}
			
			.block-2{
				height:5.5rem;
				width: 100%;
			}
			
			.play-btn:hover{
				color: #E3E3E3;
			}
			
			.pre-btn{
				font-size: 2rem;
				color: white;
				position: relative;
				left:14rem;
				cursor: pointer;
			}
			
			.pre-btn:hover{
				color: #E3E3E3;
			}
			
			.next-btn{
				font-size: 2rem;
				color: white;
				position: relative;
				left:14rem;
				cursor: pointer;
			}
			
			.next-btn:hover{
				color: #E3E3E3;
			}
			
			*{
			moz-user-select: -moz-none;
			-moz-user-select: none;
			-o-user-select:none;
			-khtml-user-select:none;
			-webkit-user-select:none;
			-ms-user-select:none;
			user-select:none;
			}
			
			.music-page{
				width: 100%;
				height:42rem;
				border: 0;
				
			}
			
			.play-bar-bar{
				
				background: #999;
				width: 600px;
				height: 0.7rem;
				position: absolute;
				top: 3rem;
				left: 35rem;
				border-radius: 10px;
				padding-left: 0px;
			}
			
			
			.mis-text{
				position: absolute;
				display:inline-block;
				color: #fff;
				left: 35rem;
				padding: 0;
				top:-11px;
				font-size: 14px;
				
			}
			
			.play-bar-btn{
				display: block;
				width: 17px;
				height: 17px;
				background: white;
				border-radius: 17px;
				position: relative;
				top:-4px;
				left: 0px;
				cursor: pointer;
			}
			
			
			.play-bar-btn-icon{
				display: block;
				width: 9px;
				height: 9px;
				background: red;
				border-radius:9px;
				position: relative;
				left:4px;
				top:4px;
				padding: 0;
				margin: 0;
				
			}

			.look-comment{
				color: #fff;
				position: absolute;
				right:150px;
				text-decoration: underline;
				cursor: pointer;
			}
			
			.look-comment:hover{
				color: #ccc;
			}
			
			.modal-body{
				height: 30rem;
				overflow: scroll;
			}
			
			.commit-comment{
				width: 400px;
			}
			
			.comment-btn{
				background: #337ab7;
			}
			
			.follow{
				cursor: pointer;
			}
			
			.follow:hover{
				text-decoration: underline;
			}
			
			.fa{
				font-size: 1rem;
			}
			
			.message-badge{
				position: relative;
				left: 4rem;
			}
			
			.popover-con-div > p{
				padding-top: 5px;
				border-bottom:1px solid #ccc;
				cursor: pointer;
			}
			
			.message-head:disabled,.message-content:disabled{
				background: #FFFFFF;
			}
		.msg-label{
			font-size: 1.7rem;
		}

		</style>
	</head>
	<body ng-app="page-content" ng-controller="page-ctrl">
		<script>
			var messages=[];			
			var webSocket=new WebSocket("ws://localhost:8080/music/musicWebsocket");
			webSocket.onerror=function(event){
				console.warn("error");
			};
			webSocket.onopen=function(event){
				console.info('open');
			};
			
			
			function generateMsg(){
				function getStr(jsonData,index){
					var str="<p data-toggle='modal' data-target='#messageModal'>"+"<span class='index' style='display:none;'>"+index+"</span>"+jsonData.wskInf+"</p>" ;
					return str;
				};
				var MsgDiv="<div class='popover-con-div'>";
				for(var i=0;i<messages.length;i++){
					MsgDiv+=getStr(messages[i],i);
				}
				MsgDiv+="</div>";
				return MsgDiv;
			}
			
			function updateMsgView(){
				if(messages.length==0){
					$('.new-message').attr('data-original-title','<h4>没有新消息</h4>');
					$('.message-badge').text(messages.length);
					$('.message-badge').hide();
				}else{
					$('.new-message').attr('data-original-title','<h4>'+messages.length+'条新消息</h4>');
					$('.message-badge').text(messages.length);
					$('.message-badge').show();
				}
				$('.new-message').attr('data-content',generateMsg());
			}
			
			webSocket.onmessage=function(event){
				var data=event.data;
				var jsonData=JSON.parse(data);
				messages.push(jsonData);
				updateMsgView();
			};
			var barStart;
			var nowOffs=0;
			var playing=false;
			var mouseDown=false;
			var audio;
			var songLength;
			var interv;
			var pageContent=angular.module("page-content",[]);
			pageContent.controller('page-ctrl',function($scope,$http){
				$scope.comments=[];
				$scope.followedUsers=[];
				$scope.followUsers=[];
				function getComments(songId){
					$http({
						method:'GET',
						url:'getComments?songId='+songId,
					}).then(function(data){
						var resultMap=data.data.resultMap;
						var comments=resultMap.comments;
						$scope.comments=comments;
						$scope.$apply();
					});
				}
				
				var formatDateTime = function (date) {  
				    var y = date.getFullYear();  
				    var m = date.getMonth() + 1;  
				    m = m < 10 ? ('0' + m) : m;  
				    var d = date.getDate();  
				    d = d < 10 ? ('0' + d) : d;  
				    var h = date.getHours();  
				    var minute = date.getMinutes();  
				    minute = minute < 10 ? ('0' + minute) : minute; 
				    var second=date.getSeconds();
				    second = second < 10 ? ('0' + second) : second; 
				    return y + '-' + m + '-' + d+' '+h+':'+minute+":"+second;  
				};  
				
				function postComment(songId,commentTime,commentContent){
					$http({
						method:'GET',
						url:'postComment?songId='+songId+'&commentTime='+commentTime+"&commentContent="+commentContent,
					}).then(function(data){
						$('.post-message').removeAttr('disabled');
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var comment=resultMap.comment;
						$scope.comments.push(comment);
						$scope.$apply();
					},function(data){
						$('.post-message').removeAttr('disabled');
					});
				}
				
				function follow(followedUsername,hr){
					$http({
						method:'GET',
						url:'follow?followedUsername='+followedUsername,
					}).then(function(data){
						$(hr).removeAttr('disabled');
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var followedUsername=resultMap.followedUsername;
						var comments=$scope.comments;
						for(var i=0;i<comments.length;i++){
							if(comments[i].username==followedUsername){
								if(result=='follow'){
									$scope.comments[i].followState='true';
								}	
								else{
									$scope.comments[i].followState='false';
								}
							}
						}
						$scope.$apply();
					},function(data){
						$(hr).parent().find('.follow').removeAttr('disabled');
					});
				}
				
				function follow2(followedUsername,hr){
					$http({
						method:'GET',
						url:'follow?followedUsername='+followedUsername,
					}).then(function(data){
						$(hr).removeAttr('disabled');
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var followedUsername=resultMap.followedUsername;
						var followedUsers=$scope.followedUsers;
						for(var i=0;i<followedUsers.length;i++){
							if(followedUsers[i].username==followedUsername){
								if(result=='follow')
									$scope.followedUsers[i].followedState='true';
								else{
									$scope.followedUsers[i].followedState='false';
								}
							}
						}
						$scope.$apply();
					},function(data){
						$(hr).removeAttr('disabled');
					});
				}
				
				function follow3(followedUsername,hr){
					$http({
						method:'GET',
						url:'follow?followedUsername='+followedUsername,
					}).then(function(data){
						$(hr).removeAttr('disabled');
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var followedUsername=resultMap.followedUsername;
						var followUsers=$scope.followUsers;
						for(var i=0;i<followUsers.length;i++){
							if(followUsers[i].username==followedUsername){
								if(result=='follow')
									$scope.followUsers[i].followState='true';
								else{
									$scope.followUsers[i].followState='false';
								}
							}
						}
						$scope.$apply();
					},function(data){
						$(hr).removeAttr('disabled');
					});
				}
				
				function getFollow(){
					$http({
						method:'GET',
						url:'getFollow'
					}).then(function(data){
						
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var followUsers=resultMap.followUsers;
						$scope.followUsers=followUsers;
					},function(data){
						
					});
				}
				
				function getFollowed(){
					$http({
						method:'GET',
						url:'getFollowed'
					}).then(function(data){
						
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var resultMap=data.data.resultMap;
						var result=resultMap.result;
						if(result=='unlogin'){
							location.href="login.jsp";
						}
						var followedUsers=resultMap.followedUsers;
						$scope.followedUsers=followedUsers;
						$scope.$apply();
					},function(data){
						
					});
				}
				
				$(document).on('click','.look-comment',function(){
					var songId=window.sessionStorage.getItem("playingSongId");
					if(songId==null){
						return;
					}
					getComments(songId);
				});
				
				$(document).on('click','.post-message',function(){
					
					var commentContent=$('.comment-content').val().trim();
					if(commentContent==null||commentContent==""){
						return;
					}
					var currentTime=new Date();
					var commentTime=formatDateTime(currentTime);
					var songId=window.sessionStorage.getItem("playingSongId");
					if(songId==null){
						return;
					}
					postComment(songId,commentTime,commentContent);
					$('.post-message').attr('disabled','true');
					$('.comment-content').val('');
				});
				
				$(document).on('click','.follow',function(){
					var username=$(this).parent().find('.com-username').attr('username');
					var hr='.com-username[username='+username+']';
					$(hr).parent().find('.follow').attr('disabled','disabled');
					follow(username,hr);
				});
				
				$(document).on("click",".my-follow",function(){
					getFollow();
				});
				
				$(document).on("click",".my-followed",function(){
					getFollowed();
				});
				$(document).on("click",".follow2",function(){
					$(this).attr('disabled','disabled');
					var username=$(this).parent().find('.username').attr('username');
					follow2(username,this);
					
				});
				$(document).on("click",".follow3",function(){
					$(this).attr('disabled','disabled');
					var username=$(this).parent().find('.username').attr('username');
					follow3(username,this);
				});
				$(document).on("click",".popover-con-div > p",function(){
					$("[data-toggle='popover']").popover('hide');
					var index=$(this).find('.index').text();
					var msgData=messages[index];
					$('.message-head').val(msgData.wskInf);
					$('.message-content').val(msgData.wskContent);
					$('#messageModal').show();
					messages.splice(index,1);
					
					updateMsgView();
				});
			});
			 function moveBar(){
			 	songLength=audio.duration;
			 	var nowTime=audio.currentTime;
			 	var timeRate=nowTime/songLength;
			 	nowOffs=timeRate*583;
			 	$('.play-bar-btn').css('left',nowOffs);
			 	if(audio.ended==true){
			 		$('.play-btn').html('&#xe778;');
			 		playing=false;
			 		nowOffs=0;
			 		$('.play-bar-btn').css('left',nowOffs);
			 		clearInterval(interv);
			 	}
			 }
			 
			function playMusic(url){
				audio=document.getElementById('play-song');
				audio.src=url;
				audio.autoplay=true;
				audio.load();
				play_pause();
			}
			
			
			function play_pause(){
				if(playing==false){
					$('.play-btn').html('&#xe640;');
					audio.play();
					playing=true;
				}else{
					$('.play-btn').html('&#xe778;');
					audio.pause();
					playing=false;
				}
			}
			
			window.addEventListener('message',function(e){
		  				if(e.source!=window.frames[0])
		  					return;
		  				console.warn(e.data);
		  				switch(e.data){
		  					case 'play':if(playing==true){
		  					play_pause();
			  				}
			                var playingSongName=window.sessionStorage.getItem("playingSongName");
			                var playingSongUrl=window.sessionStorage.getItem("playingSongUrl");
			                $('.mis-text').text(playingSongName);
			                playMusic(playingSongUrl);break;
			                case 'login':
			                	location.href="login.jsp";
			            }
		  				},false);
		  				
			
			function init(){
				$.ajax({
					type:"get",
					url:"loginState",
					async:true,
					success:function(msg){
						var jsonD=eval(msg);
						var resultMap=jsonD['resultMap'];
						var login=resultMap['login'];
						if(login=='true'){
							$('.login').html(resultMap['nickname']);
						}
					}
				});
			}
			
			$(document).ready(function(){
				
			    barStart=$(".play-bar-btn").offset().left;
				init();
				$('.cl-item').click(function(){
					$('.cl-item').removeClass('active');
					$(this).addClass('active');
					webSocket.send('aaaa');
				});
				
				$('.cl-item-1').click(function(){

					 $("[data-toggle='popover']").popover('hide');
					 $("[data-toggle='popover']").popover({html:true });
				});
				$('.cl-item-2').click(function(){

				
					 $("[data-toggle='popover']").popover('show');
				});
				$('.play-btn').click(function(){
					play_pause();
				});
				$('.play-bar-btn').mousedown(function(event){
					mouseDown=true;
				});
				$(document).mouseup(function(event){
					mouseDown=false;
				});
				$('.play-bar-btn').mousemove(function(event){
					if(mouseDown==true){
						var offs=event.pageX-nowOffs-barStart-8;
						if(offs<=0&&nowOffs<=0){
							nowOffs=0;
							return;
						}
						if(offs>=0&&nowOffs>=583){
							nowOffs=583;
							return;
						}
						nowOffs=nowOffs+offs;
						audio.currentTime=nowOffs/583*audio.duration;
						$(this).css('left',nowOffs);
					}
				});
				
				$("#play-song").on("canplay",function(){
				    interv=setInterval("moveBar()",100);
				});
				
				$(".recommend").on("click",function(){
					$('.music-page').attr('src','music-page.html');
				});
				
				$(".collected").on("click",function(){
					$('.music-page').attr('src','collect-music.html');
				});
				$(".history").on("click",function(){
					$('.music-page').attr('src','listen-history.html');
				});
				$(".songs").on("click",function(){
					$('.music-page').attr('src','songs.html');
				});
				$(".my-comments").on("click",function(){
					$('.music-page').attr('src','user-comment.html');
				});
				$(function (){ $("[data-toggle='popover']").popover({html:true });});
			});

		</script>
		<div class="container">
			
			<div class="head row">
				<div class="pull-left col-xs-3 logo"><span class="iconfont logo-msc">&#xe65e;</span>&nbsp;网艺云音乐</div>
				<div class=" col-xs-6" >
					<div class="input-div pull-right" >
						<input class="input" placeholder="搜索音乐" />
						<span  class="search iconfont">&#xe601;</span>
					</div>
				</div>
				<div class="col-xs-3 login-div pull-right"><span class="login"><a href="login.jsp">登录/注册</a></span></div>
			</div>
			<div class="content row">
				<div class="col-xs-3 content-left">
					<div class="cl-manage"><s:text name="item_1"></s:text></div>
					<div class="cl-item cl-item-1 active recommend"><span class="iconfont manage-icon">&#xe648;</span><s:text name="item_1_1"></s:text></div>
					<div class="block-1"></div>
					<div class="cl-manage"></span><s:text name="item_2"></s:text></div>
					<div class="cl-item cl-item-1 songs"><span class="iconfont manage-icon">&#xe61d;</span></span><s:text name="item_2_1"></s:text></div>
					<div class="cl-item cl-item-1 collected"><span class="iconfont manage-icon">&#xe602;</span></span><s:text name="item_2_2"></s:text></div>
					<div class="cl-item cl-item-1 history"><span class="iconfont manage-icon">&#xe641;</span><s:text name="item_2_3"></s:text></div>
					<div class="block-1"></div>
					<div class="cl-manage"><s:text name="item_3"></s:text></div>
					<div class="cl-item cl-item-2 new-message" data-placement="right" data-toggle="popover" title="<h4>没有新消息</h4>" data-container="body" data-content="<div class='popover-con-div'>
					</div>"><span class="iconfont manage-icon">&#xe60d;</span><s:text name="item_3_1"></s:text><span class="badge message-badge" style="display: none;"></span></div>
					<div class="cl-item cl-item-1 my-comments"><span class="iconfont manage-icon">&#xe662;</span><s:text name="item_3_2"></s:text></div>
					<div class="cl-item cl-item-1 my-followed" data-toggle="modal" data-target="#followedModal"><span class="iconfont manage-icon">&#xe60e;</span><s:text name="item_3_3"></s:text></div>
					<div class="cl-item cl-item-1 my-follow" data-toggle="modal" data-target="#followModal"><span class="iconfont manage-icon">&#xe65f;</span><s:text name="item_3_4"></s:text></div>
				</div>
				<div class="col-xs-9 content-right">
					<iframe class="music-page" src="music-page.html">
						
					</iframe>
					
				</div>
			</div>
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							所有评论
						</h4>
					</div>
					<div class="modal-body">
						<div>
							<div ng-repeat="comment in comments">
								<span style="display: none;" class="com-username"  username="{{comment.username}}"></span>
								<strong>{{comment.nickname}}</strong>&nbsp;&nbsp;&nbsp;<small>{{comment.commentTime}}</small><span></span>
								&nbsp;&nbsp;&nbsp;<span class="follow">{{comment.followState=='false'?'加关注':''}}</span>
								<p>{{comment.commentContent}}<p>
							</div>

						</div>
					</div>
					<div class="modal-footer">
						<div class="input-group commit-comment pull-right">
				            <input type="text" class="form-control comment-content">
				            <div class="input-group-btn">
				            	<button class="btn btn-primary post-message">发表评论</button>
				            </div>
				        </div>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		
		<!--
        	作者：1471880107@qq.com
        	时间：2017-05-28
        	描述：我的关注
        -->
        	<div class="modal fade" id="followedModal"  role="dialog" aria-labelledby="followedModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" >
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="followedModalLabel">
							我的关注
						</h4>
					</div>
					<div class="modal-body">
						<div>
							<div>
								<table class="table table-bordered">
								  <caption></caption>
								  <thead>
								    <tr>
								      <th>用户昵称</th>
								      <th>关注</th>
								    </tr>
								  </thead>
								  <tbody>
								    <tr ng-repeat="followedUser in followedUsers">
								    	
								      <td>{{followedUser.nickname}}</td>
								      <td><span style="display: none;" class="username" username="{{followedUser.username}}"></span><button class="btn btn-default btn-sm follow2"><span class="glyphicon {{followedUser.followedState=='true'?'glyphicon-ok':'glyphicon-remove'}} ">&nbsp;{{followedUser.followedState=='true'?'已关注':'未关注'}}</span></button></td>
								    </tr>
								  </tbody>
								</table>
							</div>

						</div>
					</div>
					<div class="modal-footer">
						
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		
		<!------------------------------------------------------------->
		
		<div class="modal fade" id="followModal"  role="dialog" aria-labelledby="followModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" >
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="followModalLabel">
							关注我的
						</h4>
					</div>
					<div class="modal-body">
						<div>
							<div>
								<table class="table table-bordered">
								  <caption></caption>
								  <thead>
								    <tr>
								      <th>用户昵称</th>
								      <th>关注</th>
								    </tr>
								  </thead>
								  <tbody>
								    <tr ng-repeat="followUser in followUsers">
								    	
								      <td>{{followUser.nickname}}</td>
								      <td><span style="display: none;" class="username" username="{{followUser.username}}"></span><button class="btn btn-default btn-sm follow3"><span class="glyphicon {{followUser.followState=='true'?'glyphicon-ok':'glyphicon-remove'}} ">&nbsp;{{followUser.followState=='true'?'已关注':'未关注'}}</span></button></td>
								    </tr>
								  </tbody>
								</table>
							</div>

						</div>
					</div>
					<div class="modal-footer">
						
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		<!---------------------------------------->
		
		<!------------------------------------------------------------->
		
		<div class="modal fade" id="messageModal"  role="dialog" aria-labelledby="messageModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" >
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="messageModalLabel">
							消息通知
						</h4>
					</div>
					<div class="modal-body">
						<div>
							<div >
								<span class="msg-label">标题:</span>
								<input class="form-control message-head" disabled="disabled" />
								<span class="msg-label">内容:</span>
								<textarea class="form-control message-content" disabled="disabled" rows="10"></textarea>
							</div>

						</div>
					</div>
					<div class="modal-footer">
						
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		<!---------------------------------------->
		</div>
		<div class="block-2"></div>
		<audio id="play-song"></audio>
		<div class="play-bar">	
			<p class="mis-text"></p>
			<p class="play-bar-bar">
				<span class="play-bar-btn">
					<span class="play-bar-btn-icon">
					
					</span>
				</span>
			</p>
			<span class="iconfont pre-btn">&#xe604;</span>
			<span class="iconfont play-btn">&#xe778;</span>
			<span class="iconfont next-btn">&#xe603;</span>
			<span class="look-comment" data-toggle="modal" data-target="#myModal">查看评论</span>
		</div>
	</body>
</html>
