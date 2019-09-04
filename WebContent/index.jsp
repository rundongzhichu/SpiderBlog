<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui">
 <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE;chrome=1">
 <title>Blogs</title>
 <link rel='stylesheet' id='carousel-css'  href='static/css/owl.carousel.min_3.css' type='text/css' media='all' />
 <link rel='stylesheet' id='fontello-css'  href='static/css/fontello_3.css' type='text/css' media='all' />
 <link rel='stylesheet' id='nicetheme-css'  href='static/css/nicetheme_3.css' type='text/css' media='all' />
 <link rel='stylesheet' id='reset-css'  href='static/css/reset_3.css' type='text/css' media='all' />
 <link rel='stylesheet' id='style-css'  href='static/css/style_3.css' type='text/css' media='all' />
 <script type='text/javascript' src='js/js1.js'></script>
 <script type='text/javascript' src='js/js2.js'></script>
  <link rel='stylesheet' id='common-css'  href='ourstatic/ourcss/common.css' type='text/css' media='all' />
 </head>

 <body class="home blog off-canvas-nav-left">
 <c:if test="${empty sessionScope.allBlogs}">
 	<jsp:forward page="HomePageServlet"></jsp:forward>
 </c:if>
  <div class="loader-mask">
   <div class="loader">
    <div></div>
    <div></div>
   </div>
  </div>
  <div id="header" class="navbar-fixed-top">
   <div class="container">
    <h1 class="logo"> <a href="##" title="GRACE" style="background-image: url(images/logo.png);"> </a> </h1>
    <div role="navigation" class="site-nav  primary-menu">
     <div class="menu-fix-box">
      <ul id="menu-navigation" class="menu">
        <li class="current-menu-ancestor"><a>首页</a> </li>
		<li class="current-menu-parent menu-item-has-children"><a>科技</a>
			<ul class="sub-menu">
			<li class="menu-item-has-children"><a href="list.html">计算机</a>
				<ul class="sub-menu">
				<li><a href="#">人工智能</a></li>
				<li><a href="#">大数据/云计算</a></li>
				<li><a href="#">前端</a></li>
				<li><a href="#">后端</a></li>
				<li><a href="#">python</a></li>
				<li><a href="#">Android</a></li>
				<li><a href="#">Java</a></li>
				<li><a href="#">JavaScrit</a></li>
				<li><a href="#">SQL</a></li>
				<li><a href="#">安全</a></li>
				<li><a href="#">游戏开发</a></li>
				<li><a href="#">物联网</a></li>
				<li><a href="#">VR/AR</a></li>
				</ul>
			</li>
			<li><a href="list2.html">军事</a></li>
			<li><a href="#">科学</a></li>
			<li><a href="#">5G</a></li>
			<li><a href="#">科普</a></li>
			<!--<li><a href="list3.html">纯文字列表页</a></li>-->
			</ul>
		</li>
		<li class="current-menu-parent menu-item-has-children"><a>时事</a>
			<ul class="sub-menu">
			<li><a href="bolg.html">社会</a></li>
			<li><a href="bolg.html">法治</a></li>
			<li><a href="bolg2.html">国际</a></li>
			</ul>
		</li>
        <li><a href="tu.html">财经</a></li>
        <li class="menu-item-has-children"><a>思想</a>
			<ul class="sub-menu">
			<li><a href="links.html">历史</a></li>
			<li><a href="#">艺术</a></li>
			<!--<li><a href="http://www.jianhuax.com/html5/2018-05-28/97.html">下载该模板</a></li>-->
			<li class="menu-item-has-children"><a href="#">文学</a>
				<ul class="sub-menu">
				<li><a href="#">小说</a></li>
				<li><a href="#">随笔</a></li>
				<li><a href="#">散文</a></li>
				</ul>
			</li>
			</ul>
		</li>
		<li class="current-menu-parent menu-item-has-children"><a>生活</a>
			<ul class="sub-menu">
			<li class="menu-item-has-children"><a href="list.html">趣味</a>
				<ul class="sub-menu">
				<li><a href="#">乐器</a></li>
				<li><a href="#">养花弄草</a></li>
				<li><a href="#">手工</a></li>
				</ul>
			</li>
			<li><a href="#">时尚</a></li>
			<li><a href="#">娱乐</a></li>
			<li><a href="list2.html">旅行</a></li>
			<li><a href="#">美食</a></li>
			<li><a href="#">运动</a></li>
			<li><a href="#">健康</a></li>
			<!--<li><a href="list3.html">纯文字列表页</a></li>-->
			</ul>
		</li>
       <!--<li><a target="_blank" href="http://www.jianhuax.com/html5/2018-05-28/97.html">下载该模板</a></li>       -->
      </ul>
     </div>
    </div>
    
    
    
    <!-- 注册登录搜索 -->
    <div class="right-nav pull-right">
    
     <button class="js-toggle-search" ><i class=" icon-search"></i></button>
     
     
     <a href="login.jsp" class="toggle-tougao hidden-xs hidden-sm">登录</a>
     <span class="line  hidden-xs hidden-sm"></span>
      <a href="#" class="toggle-tougao hidden-xs hidden-sm"> 注册</a>
    </div>
    
    
    
    <div class="navbar-mobile hidden-md hidden-lg">
     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
     <!--
     	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="current-menu-ancestor current-menu-parent menu-item-has-children"><a><i class="icon-star"></i>首页</a></li>

		<li class="current-menu-ancestor current-menu-parent menu-item-has-children"><a><i class="icon-th-list"></i>列表页</a>
			<ul class="sub-menu">
			<li><a href="list.html">长图列表页</a></li>
			<li><a href="list2.html">大小图列表页</a></li>
			<li><a href="list3.html">纯文字列表页</a></li>
			</ul>
		</li>
		<li class="current-menu-ancestor current-menu-parent menu-item-has-children"><a><i class="icon-th-list"></i>内容页</a>
			<ul class="sub-menu">
			<li><a href="bolg.html">内容页样式1</a></li>
			<li><a href="bolg2.html">内容页样式2</a></li>
			</ul>
		</li>
		<li><a href="tu.html"><i class="icon-pencil"></i>图片页</a></li>
		<li><a href="links.html"><i class="icon-doc"></i>友情链接</a></li>
		<li><a target="_blank" href="http://www.jianhuax.com/html5/2018-05-28/97.html"><i class="icon-flash"></i>下载该模板</a></li>

	  </ul>
     </div>
     -->
     
     
     <div class="body-overlay"></div>
    </div>
   </div>
  </div>
  <div id="page-content">
   <div class="top-content">
    <div class="container">
     <div class="row">
      <div class="owl-carousel top-slide-two">
       <div class="item">
        <a href="bolg.html">
         <div class="slider-content" style="background-image: url(images/1.jpg); ">
          <div class="slider-cat">
           时事
          </div>
          <div class="slider-content-item">
           <h2>高德和百度又在谈让地图成为生活服务入口，类似的话怎么说了十年还没成？</h2>
          </div>
         </div> </a>
       </div>
       <div class="item">
        <a href="bolg.html">
         <div class="slider-content" style="background-image: url(images/2.jpg); ">
          <div class="slider-cat">
           科技
          </div>
          <div class="slider-content-item">
           <h2>互联网征信，下一个“风口”诞生互联网金融的BAT</h2>
          </div>
         </div> </a>
       </div>
       <div class="item">
        <a href="bolg.html">
         <div class="slider-content" style="background-image: url(images/3.jpg); ">
          <div class="slider-cat">
           财经
          </div>
          <div class="slider-content-item">
           <h2>Uber、Facebook、Pinterest等都是用什么发展模式实现增长的？</h2>
          </div>
         </div> </a>
       </div>
      </div>
      <div class="top-singles hidden-xs hidden-sm">
       <div class="single-item">
        <div class="image" style="background-image:url(images/timthumb.jpg)">
         <a href="bolg.html">
          <div class="overlay"></div>
          <div class="cat">
           财经
          </div>
          <div class="title">
           <h3>123资本寒冬，小心因裁员造成敏感信息泄漏</h3>
          </div> </a>
        </div>
       </div>
       <div class="single-item">
        <div class="image" style="background-image:url(images/4.jpg)">
         <a href="bolg.html">
          <div class="overlay"></div>
          <div class="cat">
           财经
          </div>
          <div class="title">
           <h3>租赁平台有低频低收入的缺点，那如何才能像Airbnb一样成功？</h3>
          </div> </a>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
   <div class="recommend-content">
    <div class="container">
     <div class="row">
      <div class="cat">
       <div class="thumbnail-cat">
        <div class="image col-xs-12 col-sm-4 col-md-4">
         <div class="index-cat-box" style="background-image:url(images/5.jpg)">
          <a class="iscat" href="bolg.html">
           <div class="promo-overlay">
            弄创潮
           </div>
           <div class="modulo_line"></div> </a>
         </div>
        </div>
        <div class="image col-xs-12 col-sm-4 col-md-4">
         <div class="index-cat-box" style="background-image:url(images/6.jpg)">
          <a class="iscat" href="bolg.htmlj">
           <div class="promo-overlay">
            说正经
           </div>
           <div class="modulo_line"></div> </a>
         </div>
        </div>
        <div class="image col-xs-12 col-sm-4 col-md-4">
         <div class="index-cat-box" style="background-image:url(images/7.jpg)">
          <a class="iscat" href="bolg.html">
           <div class="promo-overlay">
            耍腔调
           </div>
           <div class="modulo_line"></div> </a>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
   <div class="main-content">
    <div class="container">
     <div class="row">
      <div class="article col-xs-12 col-sm-8 col-md-8">
       <div class="ajax-load-box posts-con">

        <div class="ajax-load-con content wow fadeInUp">
         <div class="content-box posts-gallery-box">
          <div class="posts-gallery-img">
           <a href="bolg.html"> <img class="lazy thumbnail" data-original="images/7.jpg" src="images/9.png" /> </a>
          </div>
          <div class="posts-gallery-content">
           <h2><a href="bolg.html">视频公司 Netflix 又办了一场黑客比赛，开了很多脑洞</a></h2>
           <div class="posts-gallery-text">
            Netflix 公司每年会举办两次 Hack Day 活动。在这一天，设计师与工程师们抛开日常的工作，发挥奇思妙想，将天…
           </div>
           <div class="posts-default-info posts-gallery-info">
            <ul>
             <li class="post-author hidden-xs hidden-sm">
              <div class="avatar">
               <img alt="" src="" data-original="images/10.jpg" srcset="images/10-1.jpg" class="avatar avatar-96 photo" height="96" width="96" />
              </div><a href="bolg.html" target="_blank">爱建华</a></li>
             <li class="postoriginal hidden-xs hidden-sm"><span><i class="icon-cc-1"></i>原创</span></li>
             <li class="ico-cat"><i class="icon-list-2"></i> <a href="#">弄创潮</a></li>
             <li class="ico-time"><i class="icon-clock-1"></i> 2015-10-25</li>
             <li class="ico-eye hidden-xs hidden-sm"><i class="icon-eye-4"></i> 9,363</li>
             <li class="ico-like hidden-xs hidden-sm"><i class="icon-heart"></i> 192</li>
            </ul>
           </div>
          </div>
         </div>
        </div>

        <div class="ajax-load-con content wow fadeInUp">
         <div class="content-box posts-image-box">
          <div class="posts-default-title">
           <h2><a href="bolg.html">卡西尼-惠更斯探测器的 20 年旅程即将终结，它让我们重新认识了土星</a></h2>
          </div>
          <div class="post-images-item">
           <ul>
            <li>
             <div class="image-item">
              <a href="bolg.html">
               <div class="overlay"></div> <img class="lazy thumbnail" data-original="images/11.jpg" src="images/9.png"/> </a>
             </div> </li>
            <li>
             <div class="image-item">
              <a href="bolg.html">
               <div class="overlay"></div> <img class="lazy thumbnail" data-original="images/12.jpg" src="images/9.png"/> </a>
             </div> </li>
            <li>
             <div class="image-item">
              <a href="bolg.html">
               <div class="overlay"></div> <img class="lazy thumbnail" data-original="images/13.jpg" src="images/9.png"/> </a>
             </div> </li>
           </ul>
          </div>
          <div class="posts-default-content">
           <div class="posts-text">
             27 个国家参与，1997 年 10 月 15 日发射升空，在太空中飞行了 79 亿公里，执行了 250 万条指令，发动机点火 360 次，绕轨飞行 294 圈，飞掠土星卫星 162 次，采集了 6…
           </div>
          </div>
          <div class="posts-default-info">
           <ul>
            <li class="post-author hidden-xs hidden-sm">
             <div class="avatar">
              <img alt="" src="" data-original="images/10-1.jpg" srcset="images/10.jpg" class="avatar avatar-96 photo" height="96" width="96" />
             </div><a href="#" target="_blank">suxing</a></li>
            <li class="ico-cat"><i class="icon-list-2"></i> <a href="#">说正经</a></li>
            <li class="ico-time"><i class="icon-clock-1"></i> 2015-10-25</li>
            <li class="ico-eye hidden-xs hidden-sm"><i class="icon-eye-4"></i> 3,940</li>
            <li class="ico-like hidden-xs hidden-sm"><i class="icon-heart"></i> 104</li>
           </ul>
          </div>
         </div>
        </div>

        <div class="ajax-load-con content wow fadeInUp">
         <div class="content-box posts-gallery-box">
          <div class="posts-gallery-img">
           <a href="bolg.html"> <img class="lazy thumbnail" data-original="images/7.jpg" src="images/9.png" /> </a>
          </div>
          <div class="posts-gallery-content">
           <h2><a href="bolg.html">视频公司 Netflix 又办了一场黑客比赛，开了很多脑洞</a></h2>
           <div class="posts-gallery-text">
            Netflix 公司每年会举办两次 Hack Day 活动。在这一天，设计师与工程师们抛开日常的工作，发挥奇思妙想，将天…
           </div>
           <div class="post-style-tips">
            <span><a href="#">建华兄</a></span>
           </div>
          </div>
         </div>
        </div>

        <div class="ajax-load-con content posts-default wow fadeInUp">
         <div class="content-box">
          <div class="posts-default-img">
           <a href="bolg.html">
            <div class="overlay"></div> <img class="lazy thumbnail" data-original="images/2.jpg" src="images/2.jpg"/> </a>
          </div>
          <div class="posts-default-box">
           <div class="posts-default-title">
            <h2><a href="bolg.html">那个创立了Zara的西班牙商人，取代了比尔&middot;盖茨成为世界首富</a></h2>
           </div>
           <div class="posts-default-content">
            <div class="posts-text">
             10月23日，根据福布斯最新出炉的全球富豪榜单显示，长期位居第二位的Inditex集团老板Amancio Ortega首次超越比尔&middot;盖茨成为新晋世界首富。虽然你对这位新晋首富的名字一无所知，但Zara…
            </div>
            <div class="posts-default-info">
             <ul>
              <li class="ico-cat"><i class="icon-list-2"></i> <a href="#">说正经</a></li>
              <li class="ico-time"><i class="icon-clock-1"></i> 2015-10-24</li>
              <li class="ico-eye hidden-xs hidden-sm"><i class="icon-eye-4"></i> 1,095</li>
              <li class="ico-like hidden-xs hidden-sm"><i class="icon-heart"></i> 38</li>
             </ul>
            </div>
           </div>
          </div>
         </div>
        </div>

         <div class="ajax-load-con content wow fadeInUp">
         <div class="content-box posts-gallery-box">
          <div class="posts-gallery-img">
           <a href="bolg.html"> <img class="lazy thumbnail" data-original="images/7.jpg" src="images/9.png" /> </a>
          </div>
          <div class="posts-gallery-content">
           <h2><a href="bolg.html">视频公司 Netflix 又办了一场黑客比赛，开了很多脑洞</a></h2>
           <div class="posts-gallery-text">
            Netflix 公司每年会举办两次 Hack Day 活动。在这一天，设计师与工程师们抛开日常的工作，发挥奇思妙想，将天…
           </div>
           <div class="posts-default-info posts-gallery-info">
            <ul>
             <li class="post-author hidden-xs hidden-sm">
              <div class="avatar">
               <img alt="" src="" data-original="images/10.jpg" srcset="images/10-1.jpg" class="avatar avatar-96 photo" height="96" width="96" />
              </div><a href="bolg.html" target="_blank">爱建华</a></li>
             <li class="postoriginal hidden-xs hidden-sm"><span><i class="icon-cc-1"></i>原创</span></li>
             <li class="ico-cat"><i class="icon-list-2"></i> <a href="#">弄创潮</a></li>
             <li class="ico-time"><i class="icon-clock-1"></i> 2015-10-25</li>
             <li class="ico-eye hidden-xs hidden-sm"><i class="icon-eye-4"></i> 9,363</li>
             <li class="ico-like hidden-xs hidden-sm"><i class="icon-heart"></i> 192</li>
            </ul>
           </div>
          </div>
         </div>
        </div>

        </div>

       <div class="clearfix"></div>
       <div id="ajax-load-posts">
        <button id="fa-loadmore" class="button button-more wow fadeInUp" data-wow-delay="0.3s" data-home="true" data-paged="2" data-action="fa_load_postlist" data-total="4">加载更多</button>
       </div>
      </div>

      <div class="sidebar col-xs-12 col-sm-4 col-md-4">
       <div class="widget suxingme_topic">
        <h3><span>推荐专题</span></h3>
        <ul class="widget_suxingme_topic">
         <li> <a href="#" title="中国">
           <div class="overlay"></div>
           <div class="image" style="background-image: url(images/1.jpg);"></div>
           <div class="title">
            <h4>国，是以华夏文明为源泉、中华文化为基础，并以汉族为主体民族的多民族国家，通用汉语、汉字，汉族与少数民族</h4>
            <div class="meta">
             <span>查看专题</span>
            </div>
           </div> </a> </li>
        </ul>
        <ul class="widget_suxingme_topic">
         <li> <a href="#" title="恐怖故事">
           <div class="overlay"></div>
           <div class="image" style="background-image: url(images/2.jpg);"></div>
           <div class="title">
            <h4>最受欢迎的恐怖故事广播</h4>
            <div class="meta">
             <span>查看专题</span>
            </div>
           </div> </a> </li>
        </ul>
        <ul class="widget_suxingme_topic">
         <li> <a href="#" title="广告">
           <div class="overlay"></div>
           <div class="image" style="background-image: url(images/3.jpg);"></div>
           <div class="title">
            <h4>松下那些情怀的广告</h4>
            <div class="meta">
             <span>查看专题</span>
            </div>
           </div> </a> </li>
        </ul>
       </div>
       
       
       
       
       
       
       <!-- 博客标题和发表时间展示 -->
       
       <div class="widget widget_suxingme_postlist">
        <h3><span>最新博客</span></h3>
        
        <ul class="recent-posts-widget">
        
        
         <li class="one"> 
         <a href="bolg.html">
           <div class="overlay"></div> <img class="lazy thumbnail" data-original="images/1.jpg" src="images/1.jpg" />
           <div class="title">
            <span>2015-10-25</span>
            <h4>视频公司 Netflix 又办了一场黑客比赛，开了很多脑洞</h4>
           </div> </a> </li>
           
           <c:forEach var="blog" items="${sessionScope.allBlogs }">
                 <li class="others">
			          <div class="image">
			           <a href="BlogShowServlet?bid=${blog.bid }"> <img class="lazy thumbnail" data-original="images/10-1.jpg" src="images/10.jpg"/> </a>
			          </div>
			          <div class="title">
			           <h4><a href="bolg.html">${ blog.title }</a></h4>
			           <span>${blog.addtime }</span>
		         </div> </li>
			</c:forEach>
           
           


          <!-- 
          		 <li class="others">
          <div class="image">
           <a href="bolg.html"> <img class="lazy thumbnail" data-original="images/10-1.jpg" src="images/10.jpg"/> </a>
          </div>
          <div class="title">
           <h4><a href="bolg.html">资本寒冬，小心因裁员造成敏感信息泄漏</a></h4>
           <span>2015-10-25</span>
          </div> </li>
          
         <li class="others">
          <div class="image">
           <a href="bolg.html"> <img class="lazy thumbnail" data-original="images/10-1.jpg" src="images/10.jpg"/> </a>
          </div>
          <div class="title">
           <h4><a href="bolg.html">资本寒冬，小心因裁员造成敏感信息泄漏</a></h4>
           <span>2015-10-25</span>
          </div> </li>
          
         <li class="others">
          <div class="image">
           <a href="bolg.html"> <img class="lazy thumbnail" data-original="images/10-1.jpg" src="images/10.jpg"/> </a>
          </div>
          <div class="title">
           <h4><a href="bolg.html">资本寒冬，小心因裁员造成敏感信息泄漏</a></h4>
           <span>2015-10-25</span>
          </div> </li>
           -->
          
        </ul>
       </div>
      
      
      
      
      
       <!--
       
       <div class="widget suxingme_social">
        <h3><span>关注我们 么么哒！</span></h3>
        <div class="attentionus">
         <ul class="items clearfix">
          <span class="social-widget-link social-link-weibo"> <span class="social-widget-link-count"><i class="icon-weibo"></i>下载此模板</span> <span class="social-widget-link-title">新浪微博</span> <a href="#" target="_blank"></a></span>
          <span class="social-widget-link social-link-tencent-weibo"> <span class="social-widget-link-count"><i class="icon-tencent-weibo"></i>建华兄个人博客</span> <span class="social-widget-link-title">腾讯微博</span> <a href="http://jianhuax.com" target="_blank"></a> </span>
          <span class="social-widget-link social-link-qq"> <span class="social-widget-link-count"><i class="icon-qq"></i>1249721215</span> <span class="social-widget-link-title">QQ号</span> <a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1249721215&amp;site=qq&amp;menu=yes" rel="nofollow"></a> </span>
          <span class="social-widget-link social-link-email"> <span class="social-widget-link-count"><i class="icon-mail"></i>1249721215@qq.com</span> <span class="social-widget-link-title">QQ邮箱</span> <a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&amp;email=1249721215@qq.com" target="_blank" rel="nofollow"></a> </span>
          <span class="social-widget-link social-link-wechat"> <span class="social-widget-link-count"><i class="icon-wechat"></i>建华兄个人博客</span> <span class="social-widget-link-title">微信公众号</span> <a id="tooltip-s-weixin" href="javascript:void(0);"></a> </span>
         </ul>
        </div>
       </div>
       -->
      </div>
     </div>
    </div>
   </div>
  </div>
  <div class="clearfix"></div>
  <div id="footer" class="two-s-footer clearfix">
   <div class="footer-box">
    <div class="container">
     <div class="social-footer">
      <a id="tooltip-f-weixin" class="wxii" href="javascript:void(0);"><i class="icon-wechat"></i></a>
     </div>
     <!--
     
     <div class="nav-footer">
      <a href="index.html">首页</a>
      <a href="list.html">列表页</a>
      <a href="list.html">列表页2</a>
      <a href="tu.html">图文展示</a>
      <a href="bolg.html">内容页面</a>
      <!--<a target="_blank" href="http://www.jianhuax.com/html5/2018-05-28/97.html">下载该模板</a>
     </div>

     <div class="copyright-footer">
      <p>Copyright ? 2018 <a class="site-link" href="http://jianhuax.com">jianhuax.com</a> &middot;  Theme By <a href="http://jianhuax.com" target="_blank">建华兄个人博客</a> </p>
     </div>
     <div class="links-footer">
     -->
      <span>友情链接：</span>
      <a href="http://www.jianhuax.com/html5/2018-05-28/97.html" target="_blank">百度一下</a>
      <a href="http://www.jianhuax.com/html5/2018-05-28/97.html" target="_blank">搜狗</a>
      <a href="http://www.jianhuax.com/html5/2018-05-28/97.html" target="_blank">阿里云</a>
     </div>
    </div>
   </div>
  </div>
  
  
  
  <!-- 搜索表格 -->
  <div class="search-form">
   <form method="get" action="ResearchServlet" role="search">
    <div class="search-form-inner">
     <div class="search-form-box">
      <input class="form-search" type="text" name="searchtxt" placeholder="键入搜索关键词" />
      <button type="submit" id="btn-search"><i class="icon-search"></i> </button>
     </div>
     <div class="search-commend">
      <h4>大家都在搜</h4>
      <ul>
       <li><a href="http://www.jianhuax.com/html5/2018-05-28/97.html">科技</a></li>
       <li><a href="http://www.jianhuax.com/html5/2018-05-28/97.html">生物</a></li>
       <li><a href="http://www.jianhuax.com/html5/2018-05-28/97.html">计算机</a></li>
      </ul>
     </div>
    </div>
   </form>
   <div class="close-search">
    <span class="close-top"></span>
    <span class="close-bottom"></span>
   </div>
  </div>
  <!--
  
  <div class="f-weixin-dropdown">
   <div class="tooltip-weixin-inner">
    <h3>关注我们的公众号</h3>
    <div class="qcode">
     <img src="images/weixin.jpg" width="160" height="160" alt="微信公众号" />
    </div>
   </div>
   
   <div class="close-weixin">
    <span class="close-top"></span>
    <span class="close-bottom"></span>
   </div>
  </div>
  -->
  <script type="text/javascript">
/* <![CDATA[ */

var suxingme_url = {"slidestyle":"index_slide_sytle_2","wow":"1","sideroll":"1","duang":"1"};
/* ]]> */


</script>
  <script type="text/javascript" src="js/js3.js"></script>
  <script type="text/javascript" src="js/js4.js"></script>
  <script type="text/javascript" src="js/js5.js"></script>
  <script type="text/javascript" src="js/js6.js"></script>
  <script type="text/javascript" src="js/js7.js"></script>
  <script type="text/javascript" src="js/share.js"></script>

 </body>
</html>