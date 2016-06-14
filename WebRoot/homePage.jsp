<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.util.List ,com.project.bean.ClientsBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width">

<meta name="renderer" content="webkit">
<title>客户信息 - 伙伴云表格</title>
<link rel="icon" href="https://o1aqprei7.qnssl.com/favicon.ico">
<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/hb_style.css?d63f0748b8f3671ac113">
<style id="customStyle">
.hb_wrap .hb_workspaces {
	top: -316px;
}
.hb_wrap_bg {
	height: 782px;
}
.fuxuan{}
.hb_wrap_workspaces .hb_wrap .hb_workspaces {
	top: 0px;
	max-height: 782px;
}
.hb_wrap_workspaces .hb_wrap .switch_notice {
	top: 342px;
}
.hb_wrap_workspaces .hb_wrap .hb_header {
	top: 316px;
}
.hb_wrap_workspaces .hb_wrap .hb_main {
	margin-top: 396px;
}
.hb_wrap_workspaces .hb_wrap .hb_app {
	top: 396px;
}
.hb_wrap .hb_app {
	min-height: 702px;
}
.hb_nav_setting .hb_wrap_workspaces .hb_wrap .hb_setting {
	margin-top: 396px;
}
.hb_wrap .hb_setting {
	height: auto!important;
	height: 702px;
	min-height: 702px;
}
.mod_custom .custom_options .scroll {
	height: 682px;
}
.mod_custom .custom_specific .scroll {
	height: 594px;
}
.hb_item_side .side_content {
	height: 590px;
}
.hb_item_side.h_reply .side_content {
	height: 442px;
}
.hb_item_side.h_comment .side_content {
	height: 467px;
}
.hb_item_side.h_disable .side_content {
	height: 642px;
}
.hb_doc_scroll, .container_scroll {
	height: 694px;
}
.hb_market .market_main, .hb_market .market_side, .hb_market .market_appitem, .hb_market .market_body {
	height: 637px;
}
.popover.in {
	display: block;
	width: 190px;
	height: auto;
	left: 780px;
	top: 24px;
}
.orderBy {
	display: none;
	width: 190px;
	height: auto;
	left: 920px;
	top: 24px;
}
.btn_orderBy {
	cursor: pointer;
}
.mod_bulkoperation {
	display: none;
}
.tbl_height {
	width: 100%;
	height: 582px;
	overflow: scroll;
}
.tbl, .tbl th, .tbl td {
	border: 1px solid #eeecec;
}
.tbl th, .tbl td {
	padding: 0.5%;
	text-align: center;
}
.tbl {
	width: 1600px;
	border-left: none;
	border-right: none;
}
.tbl tr:hover, .tbl tr:nth-child(2n):hover {
	cursor: pointer;
	background-color: #f2f6ff;
}
.tbl tr:nth-child(2n) {
	background-color: #f6f7f8;
}
.tbl tr th:first-child, .tbl tr td:first-child {
	border-left: none;
}
.tbl tr th:first-child, .tbl tr td:last-child {
	border-right: none;
}
</style>
</head>
<body class="hb_nav_app">
<%String path = request.getContextPath();
	request.setCharacterEncoding("gb2312");
 %>
<div id="root">
	<div class="hb_wrap" >
		<div >
			<div >
				<div class="hb_workspaces" >
					<div class="workspaces_h" ><span >工作区</span>
						<p >和小伙伴一起共享数据的地方</p>
					</div>
					<div class="workspaces_c cl" >
						<ul class="mod_workspaces cl" >
							<li >
								<div class="mod_cover c_business" style="background-color:#79BEAF;" ><span class="bl" ></span><span class="br" ></span>
									<h3 class="" style="color:#FFFFFF;background-color:#79BEAF;" >${user.getName()}的工作区</h3>
									<img src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/space_cover/1045757/0" class="photo" ></div>
								<noscript >
								</noscript>
							</li>
							<li class="workspace_add" >
								<div ><i ></i><span >创建工作区</span></div>
							</li>
						</ul>
					</div>
				</div>
				<div class="switch_workspaces undefined" ><i title="选择工作区" ></i></div>
				<div class="hb_header undefined" >
					<div class="set cl" > <em class="pipe" ></em><span class="mod_avatar avt_small" title="大脑瓜子泽拉图" ><img src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32" class="avatar" draggable="false" ><span >${user.getName()}</span></span><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >解绑</a><a href="###" style="display:none;" >解绑</a><a href="###" style="display:none;" >解绑</a></div>
					<div class="nav nav_second nav_back" >
						<noscript >
						</noscript>
						<h1 ><span ><cite >${user.getName()}的工作区</cite></span></h1>
						<h3 >返回</h3>
						<h2 ><span ><cite >客户信息</cite></span></h2>
					</div>
				</div>
			</div>
			<div >
				<div class="hb_app" >
					<div class="hb_frame cl" >
						<div class="hb_row cl " >
							<div class="col_2" >
								<div class="fixed_custom" >
									<div class="mod_custom hb_condition" >
										<div class="custom_options" >
											<div class="scroll" >
												<div class="item_view" id="jump" >
													<div class="view_mark jump" ><i ></i><b >设置表格及权限</b><cite ><i ></i></cite><span class="guidepoint gp_install_app_setting" data-tip="在这里调整表格结构和数据的展现形式" ><span ></span></span></div>
												</div>
												<div class="item_view" >
													<div class="view_mark" ><a href="###" class="add_view" ><i data-tip="添加新筛选" ></i></a><i ></i><b >公共筛选</b>
														<noscript >
														</noscript>
													</div>
													<ul >
														<a href="show"><li class="selected" ><b >全部</b></li></a>
														<a href=""><li ><b >初步意向</b></li></a><cite ><i ></i></cite>
														<a href="searQianding?status=4"><li ><b >完成签订</b></li></a><cite ><i ></i></cite>
														<a href="searQianding?status=5"><li ><b >已经付款</b></li></a><cite ><i ></i></cite>
													</ul>
												</div>
												<div class="item_view" id="jump" >
													<div class="view_mark jump" ><i ></i><b >自定义筛选</b><cite ><i ></i></cite></div>
												</div>
												<div class="item_view" id="jump" >
													<div class="view_mark jump" ><i ></i><b >我的共享</b><cite ><i ></i></cite></div>
												</div>
											</div>
										</div>
										<div class="custom_specific" ></div>
									</div>
								</div>
							</div>
							<div class="col_10" >
								<div class="hb_itemlist" >
									<div class="mod_operations" > <a href="addClient.jsp" class="pn pn_add y" ><i ></i><span>客户</span></a> <span >共${clientList.size()}条</span>
										<div class="operation "> <span href="#" class="btn_orderBy" ><i data-tip="排序"  ></i>
											<div class="popover bottom orderBy ">
												<div class="popover-content" >
													<div class="pop_menu cl" >
														<div class="pop_tips" >选择排序字段</div>
														<ul class="pop_select pop_sequence cl" >
															<li class="" ><a href="###" title="创建人，升序" >创建人，升序</a></li>
															<li class="" ><a href="###" title="创建人，降序" >创建人，降序</a></li>
															<li class="" ><a href="orderByOldTime" title="创建时间，最旧的排前" >创建时间，最旧的排前</a></li>
															<li class="current" ><a href="###" title="创建时间，最新的排前" >创建时间，最新的排前</a></li>
															<li class="" ><a href="###" title="修改人，升序" >修改人，升序</a></li>
															<li class="" ><a href="###" title="修改人，降序" >修改人，降序</a></li>
															<li class="" ><a href="###" title="修改时间，最旧的排前" >修改时间，最旧的排前</a></li>
															<li class="" ><a href="###" title="修改时间，最新的排前" >修改时间，最新的排前</a></li>
															<li class="" ><a href="###" title="最后活动时间，最旧的排前" >最后活动时间，最旧的排前</a></li>
															<li class="" ><a href="###" title="最后活动时间，最新的排前" >最后活动时间，最新的排前</a></li>
														</ul>
													</div>
												</div>
											</div>
											</span> 
											<a href="#" class="th_sel" > <i ></i>
												<div class="popover last_pop bottom" style="left: 941px; top: 22px;  width: auto; max-height: 440px; overflow: auto;" >
													<div class="popover-content" >
														<div class="pop_menu cl" >
															<div class="pop_tips" ><span >选择显示字段</span>
																<label style="float:right;" onclick="cancelCheck(event)" >
																	<input class="sel_all all_del" type="checkbox"  checked="checked"  />
																	<span >全选</span></label>
															</div>
															<ul class="pop_select pop_catlist cl" >
															 
															</ul>
														</div>
													</div>
												</div>
											</a> 
											<cite > 
											<a data-tip="从Excel新增或更新数据" class="" href="previewExcel.jsp" > <i ></i> <span >导入</span> </a> <a data-tip="将数据导出为Excel" href="###" ><i ></i><span >导出</span></a> </cite> <cite > <span class="pn_switch pn_switch_off" ><span class="checkbox" ></span><em class="on" >表格对外服务</em><em class="off" >表格对外服务</em></span> </cite> </div>
										<div class="item_search cl" > <em class="drop" ></em> <i data-tip="搜索" ></i>
										
											<form action="sinall" method="post">
												<input type="text" class="s_input" placeholder="在结果中搜索" name="select">
											</form>
										
											<div class="popover bottom">
												<div class="popover-content" >
													<div class="pop_menu cl" >
														<div class="pop_tips" ><span >在以下字段中搜索</span>
															<label style="float:right;" onclick="cancelCheck(event)" >
																<input class="sel_all" type="checkbox" checked="checked" />
																<span >全选</span></label>
														</div>
														<ul class="pop_select pop_catlist cl" >
															<li class="current" ><span class="mod_category" ><a href="#" >客户名称</a></span></li>
															<li class="current" ><span class="mod_category" ><a href="#" >预计金额</a></span></li>
															<li class="current" ><span class="mod_category" ><a href="#" >公司地址</a></span></li>
															<li class="current" ><span class="mod_category" ><a href="#" >联系方式</a></span></li>
															<li class="current" ><span class="mod_category" ><a href="#" >备注</a></span></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<form action="deleteClient" method="post">
							
									<div class="mod_bulkoperation" > <cite class="cancal_btn" ><i ></i><span >取消</span></cite><span class="info" ><span >已选择</span><strong >1</strong><em ><span >/</span><span >${clientList.size()}</span></em><span >条数据</span></span><button >删除</button><span class="btn btn_del">删除</span></div>
									<div class="mod_itemlist" style="min-height:150px;" >
										<noscript >
										</noscript>
										<noscript >
										</noscript>
										<div class="tbl_height fixedDataTableLayout_main public_fixedDataTable_main" > 
											
											<table class="tbl">
												<caption>
												</caption>
												<colgroup>
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												<col width="*">
												</colgroup>
												<thead>
													<tr>
														<th><input type="checkbox" id="allcheck">sssss</th>
														<th>客户名称</th>
														<th>客户来源</th>
														<th>销售状态</th>
														<th>销售人员</th>
														<th>联络时间</th>
														<th>预计签约时间</th>
														<th>预计金额</th>
														<th>公司地址</th>
														<th>联系方式</th>
														<th>备注</th>
														<th>附件</th>
													</tr>
												</thead>
												<tbody>
												<s:iterator value="#session.clientList" status="all">
											   		  <%--用EL表达式直接调用属性循环输出对象的各个属性值--%>
								                    <tr>
								                    	<td><s:property value="#all.getIndex()+1"/></td>
								                        <td>${name} </td>
								                        <td>
								                        	<s:if test="#this.source==1"><span class="mod_category catcolor_o color_a" title="推广活动" sid="1">推广活动</span></s:if> 
         													<s:elseif test="#this.source==2"><span class="mod_category catcolor_o color_e" title="媒体广告" sid="2">媒体广告</span></s:elseif>
         													<s:elseif test="#this.source==3"><span class="mod_category catcolor_o color_b" title="电话咨询" sid="3">电话咨询</span></s:elseif>
         													<s:elseif test="#this.source==4"><span class="mod_category catcolor_o color_e" title="熟人推荐" sid="4">熟人推荐</span></s:elseif>
         													<s:else><span class="mod_category catcolor_o color_a" title="其他" sid="5">其  他</span></s:else>
         												</td>
								                        <td>
								                        	<s:if test="#this.status==1"><span class="mod_category catcolor_o color_e" title="取得联系" cid="1">取得联系</span></s:if> 
         													<s:elseif test="#this.status==2"><span class="mod_category catcolor_o color_a" title="客户拜访" cid="2">客户拜访</span></s:elseif>
         													<s:elseif test="#this.status==3"><span class="mod_category catcolor_o color_b" title="商务谈判" cid="3">商务谈判</span></s:elseif>
         													<s:elseif test="#this.status==4"><span class="mod_category catcolor_o color_b" title="合同签订" cid="4">合同签订</span></s:elseif>
         													<s:elseif test="#this.status==5"><span class="mod_category catcolor_o color_e" title="付款完成" cid="5">付款完成</span></s:elseif>
         													<s:elseif test="#this.status==6"><span class="mod_category catcolor_o color_a" title="本案结束" cid="6">本案结束</span></s:elseif>
         													<s:elseif test="#this.status==7"><span class="mod_category catcolor_o color_a" title="失败" cid="7">失败</span></s:elseif>
         													<s:else><span class="mod_category catcolor_o color_e" title="其他" cid="8">其  他</span></s:else>
								                        </td>
								                        <td>${sales}</td>
								                        <td>${statime }</td>
								                        <td>${pretime}</td>
								                        <td>${premoney} 元</td>
								                        <td>${adress}</td>
								                        <td>${contact}</td>
								                        <td>${remark}</td>
								                        <td>${attachment}</td>
								                    </tr>
											</s:iterator>
													<tr>
														<td>12</td>
														<td>BOSE 专卖店（北京蓝色港湾店）</td>
														<td>电话咨询</td>
														<td><span class="mod_category catcolor_o color_e" title="付款完成" cid="5">付款完成</span></td>
														<td>可馨</td>
														<td>2015-07-16</td>
														<td>2015-08-08</td>
														<td>76000元</td>
														<td>北京市朝阳区朝阳公园路6号蓝色港湾17号楼L-SA-284号</td>
														<td>电话：010-59056986</td>
														<td></td>
														<td></td>
													</tr>
												</tbody>
											</table>
											
										</div>
									</div>
									
									</form>
								</div>
							</div>
							<div class="hb_item_footer cl" ><a href="###" class="switch_filter" data-tip="隐藏侧边栏" ><i ></i></a><a href="###" data-tip="偏好" class="table_styles" ><i ></i></a>
								<div class="mod_page" style="margin-left:-200px;" >
									<div class="page" ><a href="#" class="cur" >1</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</div>
<script src="assets/js/jquery.min.js"></script> 
<script>
	jQuery(document).ready(function($) {
 		

		$(".item_search").on("click", function(e){
		    $(this).addClass('s_focus');
		    $(".orderBy").hide();
		    $(".drop").click(function(event) {
		    	 $('.s_focus').find(".popover").addClass('in')
		    });
		    $(document).one("click", function(){
		        $(".item_search").removeClass('s_focus');
		        $('.item_search').find(".popover").removeClass('in');
 		   	});

		   		 e.stopPropagation();
		});
		$(".s_focus").on("click", function(e){
				    e.stopPropagation();
				});
		$(".sel_all").click(function(event) {
 			if($(this).prop('checked'))
			 	{
				$(this).parents(".pop_tips").next(".pop_select").find('li').each(function(index, el) {
						$(this).addClass('current').find('span').addClass('mod_category')
					});
 				}else {
				$(this).parents(".pop_tips").next(".pop_select").find('li').each(function(index, el) {
						$(this).removeClass('current').find('span').removeClass('mod_category')
					});
 				}
		});
		$(".all_del").click(function(event) {
 			if($(this).prop('checked'))
			 	{
 				$(".tbl").find('th,td').each(function(index, el) {
					$(this).show();
				});
				}else {
 				$(".tbl").find('th,td').each(function(index, el) {
					$(this).hide();
				});
				}
		});
	  	$(".pop_select").find('li').each(function(index, el) {
	  		$(this).on("click",function(event) {  
		  		$(this).toggleClass('current').find('span').toggleClass('mod_category')
		  		$(this).parents(".pop_select").siblings(".pop_tips").find(".sel_all").prop('checked',false)
		  	});	
	  	});	
	  	$(".btn_orderBy").click(function(e) {
	  		$(".orderBy").show();
	  		$(".last_pop").hide();
	  		$('.item_search').find(".popover").removeClass('in')
	  		$(".item_search").removeClass('s_focus');
	  		$(document).one("click", function(){
		        $(".orderBy").hide();
  		   	});
		   		 e.stopPropagation();
	  	});

	  	$(".btn_orderBy").on("click", function(e){
				    e.stopPropagation();
				});

	  	var lith="";
	  	var ullist ="";
	  	var thnum = 0;
	  	$(".th_sel").click(function(e){
 	  		$(".last_pop").show();
	  		$(".orderBy").hide();
	  		$('.item_search').find(".popover").removeClass('in')
	  		$(".item_search").removeClass('s_focus');
	  		$(document).one("click", function(){
		        $(".last_pop").hide();
  		   	});
		   		
	  		var _this = $(this)
	  		if(thnum==0){
	  			$(".tbl").find('th').each(function(index, el) {
 		   			ullist = lith += "<li class='current'><span class='mod_category'>"+$(this).text()+"</span></li>"
 		   			_this.find(".pop_select").html(ullist)
 		   			_this.find(".pop_select").find('li:first-child').remove();
 		  	 	});
				thnum=	1 
			$(this).find(".pop_select").find('li').each(function(index, el) {
			  		$(this).on("click",function(event) {  
				  		$(this).toggleClass('current').find('span').toggleClass('mod_category')
				  		$(this).parents(".pop_select").siblings(".pop_tips").find(".sel_all").prop('checked',false)
				  		if($(this).not('.current')){
				  			var num = index+2;
				  			$(".tbl").find("th:nth-child("+num+")").toggle();
				  			$(".tbl").find('tr').find("td:nth-child("+num+")").each(function(index, el) {
				  				 $(this).toggle();
				  			});
				  		}
				  	});	

			  	});	
			}
		   	
 		   	 e.preventDefault(); 
 		   	 e.stopPropagation();
	  	});

	  	
	  	$(".th_sel").on("click", function(e){
				    e.stopPropagation();
				});
 	  	// 表格操作
	    $(".tbl").find('tr').each(function(index, el) {
 	  					$(this).find('td').first().html(index)
   	  			});
	  	$(".tbl").find('th').first().find('input[type=checkbox]').click(function(event) {

	  		if($(this).prop('checked')){
	  			$(".mod_bulkoperation").show()
	  			$(".tbl").find('tr').each(function(index, el) {
 	  					var checkinp = "<input type='checkbox' class='fuxuan' checked='checked' value='1' name='id'/>"
	  					$(this).find('td').first().html(checkinp)
   	  			});
	  		}else {
	  			$(".tbl").find('tr').each(function(index, el) {
 	  					var checkinp = "<input type='checkbox' class='fuxuan' name='id'/>"
	  					$(this).find('td').first().html(checkinp)
   	  			});
	  		}
	  		
	  	});
	  	
	  	
	  $(".cancal_btn").click(function(event) {
	  		$(".mod_bulkoperation").hide()
	  		$(".tbl").find('tr').each(function(index, el) {
	  			$(this).find('td').first().html(index);
	  		});
	  });
	  
	  $(".btn_del").click(function(event) {
	  /*var qq = $("input[type=checkbox].fuxuan").prop('checked')
	  	alert(qq)*/
	  	$(".tbl").find('tr').each(function(index, el) {
	  	var qq = $("input[type=checkbox].fuxuan").prop('checked')
	  	if(qq==true){
	  		alert(true);
	  	}else{
	  	//	$(this).find('fuxuan').value='2';
	    //	$("#chosale").html($(this).html());
	 	//	alert($(this).find(".fuxuan").html())
	  		alert(false)
	  	}
		var nulstr =""
	//	$(this).find('td').html(nulstr);
		$(this).find('td').hide();
		
	  	});
	  });
	  
	  
	/* $("#searchQd").click(function(){
	 	alert("okokok");
	 	$.ajax({
	 	
	 	})
	 })*/
	  
	  
	});
	
	function all(){
		alert("allllll");
	}
	function cancelCheck(e){
 	        //取消冒泡
 	        e.cancelBubble = true;
	    }

	// function cantne (e) {
		 
	// 	$(this).toggleClass('current').find('span').toggleClass('mod_category') 
	// 	$(this).parents(".pop_select").siblings(".pop_tips").find(".sel_all").prop('checked',false)
	// }
</script>
</body>
</html>