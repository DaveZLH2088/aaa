<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<link href="../../css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="../../js/select-ui.min.js"></script>
<script type="text/javascript" src="../../editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
	
	$("#name").focus(function(){
		$(this).css("background-color","#0FF")
		var text=$(this).val();
		if(text=="请填写姓名"){
			$(this).val("");
			}
		});
		
		$("#name").blur(function(){
		$(this).css("background-color","#FFF")
		var text=$(this).val();
		if(text==""){
			$(this).val("请填写姓名");
			}
		});

	
});

function checkidentity(){
	var id=$("#identity").val();
	var notice2=$("#notice2");
	var regid=/^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
	if(regid.test(id)==false){
	   $(notice2).html("身份证输入不合法");	
	   return false;
	}else{
		$(notice2).html("");
		return true;
		}
}

function checkphone(){
	var id=$("#phone").val();
	var notice3=$("#notice3");
	var regid=/^[1-9]{8,11}$/;
	if(regid.test(id)==false){
	   $(notice3).html("电话号码输入不合法");	
	   return false;
	}else{
		$(notice3).html("");
		return true;
		}
}
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">会员管理</a></li>
    <li><a href="#">添加会员</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">添加会员</a></li> 
    
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
    <div class="formtext">Hi，<b>${userSession.mname}</b>，请填写要添加的会员信息</div>
        <form method="post" action="/hotelvip/addVip">
    <ul class="forminfo">
    <li><label>会员姓名<b>*</b></label><input name="vname" type="text" class="dfinput" placeholder="请填写会员姓名"  id="name" /></li>
   
    <li><label>性别<b>*</b></label>  
    <div style="padding-top:7px ">
    <input type="radio" name="sex" value="男" checked="checked" />男
    <input type="radio" name="sex" value="女" />女
    </div>
    </li>
    
    <li >
    <div style="position:relative">
    <label>身份证号码<b>*</b></label>
    
    <input name="idNumber" type="text" class="dfinput" onblur="checkidentity()" id="identity"/>
    </div>
    <div id="notice2" style=" font-size:14px; color:red;position:absolute; z-index:1000; margin-top:-30px; margin-left:    450px">
    </div>
    </li>
   
     
    <li>
    <div>
    <label>手机号码<b>*</b></label>
    
    <input name="phoneNumber" type="text" class="dfinput" value=""  id="phone" onblur="checkphone()" />
    </div>
     <div id="notice3" style=" font-size:14px; color:red;position:absolute; z-index:1000; margin-top:-30px; margin-left:    450px">
    </div>
    
    </li>
    
    
    <li><label>备注消息</label>
    

    <textarea id="content7" name="others" style="width:700px;height:250px;visibility:hidden;"></textarea>
    
    </li>
    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认"/></li>
    </ul>
        </form>
    </div> 
    

</body>

</html>
