<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>农无忧--农业高产综合服务云平台</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css" >

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.SuperSlide.2.1.1.js"></script>
</head>

<body>
<!---------headtop-------头部上方----------->
	<div id="headtopbg">
	<div id="headtop">
    
    	<div class="topleft">
        	<img src="images/tel.png" alt="热线电话" height="35">
        </div>
        
        <div class="topright">
        	<ul>
            	<li class="rightli"><a href="#">关注我们</a></li>
                <li class="rightli"><a href="#">加入收藏</a></li>
                <li class="rightli"><a href="#">注册</a> | <a href="#">登录</a></li>
            </ul>
        </div>
        
    </div>
    </div>
<!---------headtop-------头部上方----- 结束------>

<!-----------head--------头部-------->
	<div id="head">
    
    	<div class="logo">
        	<img src="images/logo.jpg" alt="logo" />
        </div>
        
        <div class="search">
        	<input  name="keyboard"  type="text" placeholder="请输入关键字"  />
            <input  name="submit"  type="image" src="images/btn.jpg"  />
        </div>
        
    </div>
<!-----------head--------头部-------结束----->

<!---------nav---------导航-------------->
	<div  id="nav">
    	<ul>
        	<li class="navli"><a href="#">首页</a></li>
            <li class="navli"><a href="#">高产直通车</a></li>
            <li class="navli"><a href="#">政策资金</a></li>
            <li class="navli"><a href="#">农资通</a></li>
            <li class="navli"><a href="#">商学院</a></li>
            <li class="navli"><a href="#">金融保险</a></li>
            <li class="navli"><a href="#">数字农业</a></li>
            <li class="navli"><a href="#">农业众筹</a></li>
            <li class="navli"><a href="#">媒体</a></li>
            <li class="navli"><a href="#">联系我们</a></li>
        </ul>
    </div>
<!---------nav---------导航-------结束------->

<!-----------banner-------左中右三部分----------->
	<div id="banner">
    	
        <div id="bannerleft">
        
        	<div class="leftmenu1">
            	<h3 class="title">高产通道</h3>
                <ul>
                	<li class="menuli"><a href="#">土壤评级</a></li>
                    <li class="menuli"><a href="#">土壤改良</a></li>
                    <li class="menuli"><a href="#">农资评价</a></li>
                    <li class="menuli"><a href="#">高产服务</a></li>
                    <li class="menuli"><a href="#">农业保险</a></li>
                    <li class="menuli"><a href="#">粮草出路</a></li>
                </ul>
            </div>
            
            <div class="leftmenu2">
            	<h3 class="title">政策资金</h3>
                <ul>
                	<li class="menuli"><a href="#">政策通</a></li>
                    <li class="menuli"><a href="#">项目申报</a></li>
                </ul>
            </div>
            
            <div class="leftmenu1">
            	<h3 class="title">金融保险</h3>
                <ul>
                	<li class="menuli"><a href="#">农业投资</a></li>
                    <li class="menuli"><a href="#">政策保险</a></li>
                    <li class="menuli"><a href="#">商业保险</a></li>
                    <li class="menuli"><a href="#">农业贷款</a></li>
                </ul>
            </div>
            
            <div class="leftmenu2">
            	<h3 class="title">培训直通车</h3>
                <ul>
                	<li class="menuli"><a href="#">高产培训</a></li>
                    <li class="menuli"><a href="#">政策培训</a></li>
                    <li class="menuli"><a href="#">金融培训</a></li>
                </ul>
            </div>
            
        </div>
        
        <div id="bannercenter">
        	<ul class="bannertu">
            	<li class="bannerimg"><img src="images/banner1.jpg"></li>
                <li class="bannerimg"><img src="images/banner2.jpg"></li>
                <li class="bannerimg"><img src="images/banner3.jpg"></li>
            </ul>
            <ul class="dian">
            	<li class="imgli"></li>  <li class="imgli"></li>  <li class="imgli"></li>
            </ul>
        </div>
        <script>
			jQuery("#bannercenter").slide({mainCell:".bannertu",titCell:".dian li",autoPlay:true,effect:"fade"});
		</script>
        
        <div id="bannerright">
        <!---------------政策项目------------------->
        	<div class="news">
            	<h3 class="newstitle">政策项目</h3>
                <ul>
                	<li class="newsli">这里是政策标政策标题题</li>
                    <li class="newsli">这里是政策标政策标题题政题</li>
                    <li class="newsli">这里是政策标政策标题政策标题题政</li>
                    <li class="newsli">这里是政策标政策标题政策标题</li>
                </ul>
            </div>
            <!---------------会员-----三个图标----------------->
            <div class="hy">
            	<ul>
                	<li class="hyli"><a href="#"><img src="images/hy.jpg"><br>注册会员</a></li>
                    <li class="hyli"><a href="#"><img src="images/qian.jpg"><br>申请资金</a></li>
                    <li class="hyli"><a href="#"><img src="images/sp.jpg"><br>免费课程</a></li>
                </ul>
            </div>
            <!---------------培训报名---------------------->
            <div class="baoming">
            	<h3 class="baomingtitle">培训报名</h3>
                <table>
                	<tr>
                    	<td><input name="name" type="text" placeholder="请输入姓名"></td>
                        <td rowspan="2"><input name="submit" type="image" value="" src="images/bmbtn.jpg"></td>
                    </tr>
                    <tr>
                    	<td><input name="phone" type="text" placeholder="请输入电话"></td>
                    </tr>
                </table>
            </div>
            
        </div>
        
    </div>
<!-----------banner-----结束---------->

<!--------------高产直通车--------------------->
	<div id="gaochan">
    	
        <div class="gctitlebg"><h3 class="gctitle">高产直通车</h3></div>
        
    	<div class="tuping"><img src="images/tuping.jpg" width="289" height="338"><div class="confont con1">土壤评级</div></div>
        
        <div class="centertop">
            <div class="tugai"><img src="images/tugai.jpg" width="330" height="160"><div class="confont con2">土壤改良</div></div>
            <div class="qixiang"><img src="images/qixiang.jpg" width="260" height="160"><div class="confont con3">气象分析</div></div>
        </div>
        
        <div class="centerbottom">
            <div class="nongzi"><img src="images/nognzi.jpg" width="260" height="170"><div class="confont con4">农资评价</div></div>
            <div class="gaochan"><img src="images/gaochan.jpg" width="330" height="170"><div class="confont con5">高产方案</div></div>
        </div>
        
        <div class="liangcao"><img src="images/liangcao.jpg" width="289" height="338"><div class="confont con6">粮草出路</div></div>
    </div>
<!--------------高产直通车---------结束------------>

<!--------------商学院-------------------->
	<div id="shang">
        	
        <div class="gctitlebg"><h3 class="shangtitle">商学院</h3></div>
        
        <div class="shangcon">
            <ul>
            	<li class="shangli"><dl><dt><a href="#"><img src="images/shang1.jpg"></a></dt><dd><a href="#">土地银行</a></dd><dd class="bm"><a href="#">我要报名</a></dd></dl></li>
                <li class="shangli"><dl><dt><a href="#"><img src="images/shang2.jpg"></a></dt><dd><a href="#">农业种植</a></dd><dd class="bm"><a href="#">我要报名</a></dd></dl></li>
                <li class="shangli"><dl><dt><a href="#"><img src="images/shang3.jpg"></a></dt><dd><a href="#">病虫草害</a></dd><dd class="bm"><a href="#">我要报名</a></dd></dl></li>
                <li class="shangli last"><dl><dt><a href="#"><img src="images/shang4.jpg"></a></dt><dd><a href="#">项目指导</a></dd><dd class="bm"><a href="#">我要报名</a></dd></dl></li>
            </ul>
        </div>
        
    </div>
<!--------------商学院---------结束------------>

<!-------------金融保险------------------>
	<div id="jinrong">
        	
        <div class="gctitlebg"><h3 class="gctitle">金融保险</h3></div>
         
        <div class="jrcon">
            <ul>
            	<li class="jrli"><a href="#">农业投资<br><img src="images/jr1.jpg"></a></li>
                <li class="jrli"><a href="#">农业投资<br><img src="images/jr2.jpg"></a></li>
                <li class="jrli"><a href="#">农业投资<br><img src="images/jr3.jpg"></a></li>
                <li class="jrli last"><a href="#">农业投资<br><img src="images/jr4.jpg"></a></li>
            </ul>
        </div>
        
    </div>
<!-------------金融保险---------结束------------>

<!-------------年度好农资----------------->
	<div id="nongzi">
        	
        <div class="gctitlebg"><h3 class="gctitle">年度好农资</h3></div>
         
        <div class="nzcon">
            <ul>
            	<li class="nzli"><a href="#"><img src="images/nz1.jpg"><br>种子</a></li>
                <li class="nzli"><a href="#"><img src="images/nz2.jpg"><br>肥料</a></li>
                <li class="nzli"><a href="#"><img src="images/nz3.jpg"><br>农药</a></li>
                <li class="nzli last"><a href="#"><img src="images/nz4.jpg"><br>农机</a></li>
            </ul>
        </div>
        
    </div>
<!-------------年度好农资---------结束------------>

<!-------------底部---------------->
	<div id="footer">
    <div id="foot">
    	<div class="footleft">
        	<img src="images/lx.jpg" alt="联系我们">
        </div>
        <div class="footright">
        	<img src="images/ma.jpg" alt="二维码"><br>
            <a class="gz">关注我们</a>
        </div>
    </div>
    </div>
<!-----------底部--------结束------------>

</body>
</html>
