<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.siteMap {
<<<<<<< HEAD

	margin-left: 150px;

	
=======
	display: grid;
    grid-template-columns: 1fr 3fr;
    margin-left: 300px;
    text-align: center;
}
#sitemap{
display: inline-table;
    text-align: left;
    padding-left: 100px;
    }
#sitemap span{
	 font-size: 1.3vw;
>>>>>>> master
}
.copyright {

	margin-left: 150px;

}
</style>

<footer>
	<div class="siteMap">
		<div id="footerPageLogo">
			page LOGO
		</div>
		<div id="sitemap">
			<span>품목 관리  |</span>
			<a href="javascript:void(0);" onclick="fn1(); return false;">품목 등록  /</a>
			<a href="javascript:void(0);" onclick="fn2(); return false;">품목 조회</a>
			<br />
			<span>입출고 관리  |</span>
			<a href="javascript:void(0);" onclick="fn3(); return false;">입고 등록  /</a>
			<a href="javascript:void(0);" onclick="fn4(); return false;">입고현황 조회  /</a>
			<a href="javascript:void(0);" onclick="fn5(); return false;">출고 등록  /</a>
			<a href="javascript:void(0);" onclick="fn6(); return false;">출고현황 조회</a>
			<br />
			<span>품질 관리  |</span>
			<a href="javascript:void(0);" onclick="fn7(); return false;">불량자재 등록  /</a>
			<a href="javascript:void(0);" onclick="fn8(); return false;">불량자재 조회</a>
			<br />
			<span>A/S 관리  |</span>
			<a href="javascript:void(0);" onclick="fn9(); return false;">A/S 접수 조회</a>
			<br />
			<a href="javascript:void(0);" onclick="fn10(); return false;"><span style="color:black">인사 관리</span></a>
		</div>
	</div>
	<hr />
	<div class="copyright">
	  © Copyright 2021 35s2 Class | Education | KH Academy reserved by 1조
	</div>
</footer>
