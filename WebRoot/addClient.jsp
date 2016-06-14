<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List ,com.project.bean.SalesBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="renderer" content="webkit">
<title>客户信息 - 伙伴云表格</title>
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
<link rel="icon" href="https://o1aqprei7.qnssl.com/favicon.ico">
<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/plugin.css?8b34f86f017e79d23082">
<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/hb_style.css?d63f0748b8f3671ac113">
<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/simditor_v3.css?65ecca392a53eafa1268">
<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/simditor-mention.css?7d9e12b8eee47065465c">
 <style id="customStyle">
 .ting{}
.hb_wrap .hb_workspaces {
	top: -316px;
}
.hb_wrap_bg {
	height: 782px;
}
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
.left-bottom{
	left:485.5px;top:332px;display:block;width:300px;height:auto;
}
.am-btn { margin-top:3%;}
</style>

</head>
<body class="hb_nav_app hb_wrap_item hb_wrap_item_edit">

<div id="root">
	<div class="hb_wrap" >
		<div >
			<div >
				<div class="hb_workspaces" >
					<div class="workspaces_h" ><span >=工作区</span>
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
				<div class="switch_workspaces undefined" ><i title="选择工作区" ></i><span class="ws_title" >切换工作区</span></div>
				<div class="switch_notice" ><i data-tip="通知" ></i></div>
				<div class="hb_header undefined" >
					<div class="set cl" ><span class="set_icon" data-tip="下载手机客户端" data-place="bottom" ><i ></i></span><em class="pipe" ></em><span class="set_icon" data-tip="探索" data-place="bottom" ><i ></i><em class="new" ></em></span><em class="pipe" ></em><span class="mod_avatar avt_small" title="大脑瓜子泽拉图" ><img src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32" class="avatar" draggable="false" ><span >大脑瓜子泽拉图</span></span><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >hidden</a><a href="###" style="display:none;" >解绑</a><a href="###" style="display:none;" >解绑</a><a href="###" style="display:none;" >解绑</a></div>
					<div class="nav nav_second nav_back" >
						<noscript >
						</noscript>
						<h1 ><span ><cite ><%= session.getAttribute("user") %>的工作区</cite></span></h1>
						<h3 >返回</h3>
						<h2 ><span ><cite >客户信息</cite></span></h2>
					</div>
				</div>
				<div class="hb_mask" style="display:none;" ></div>
				<div class="hb_headtips hb_headtips_hide" ><span class="hb_close" ><i ></i></span>
					<p class="info" ></p>
				</div>
				<div class="hb_notice" >
					<div class="notice_title" >
						<h4 >通知</h4>
					</div>
					<div class="mod_notifications" >
						<div >
							<div class="notice_empty" ><i ></i>
								<p ><span >没有</span><span >未读</span><span >通知</span></p>
							</div>
						</div>
						<div class="notice_read" ><a href="###" >查看全部已读通知</a></div>
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
													<div class="view_mark jump" ><i ></i><b >设置表格及权限</b><cite ><i ></i></cite>
														<noscript >
														</noscript>
													</div>
												</div>
												<div class="item_view" >
													<div class="view_mark" ><a href="###" class="add_view" ><i data-tip="添加新筛选" ></i></a><i ></i><b >公共筛选</b>
														<noscript >
														</noscript>
													</div>
													<ul >
														<li class="selected" ><b >全部</b></li>
														<li ><b >初步意向</b><cite ><i ></i></cite></li>
														<li ><b >完成签订</b><cite ><i ></i></cite></li>
														<li ><b >已经付款</b><cite ><i ></i></cite></li>
													</ul>
												</div>
												<div class="item_view" id="jump" >
													<div class="view_mark jump" ><i ></i><b >自定义筛选</b><cite ><i ></i></cite></div>
												</div>
												<div class="item_view" id="jump" >
													<div class="view_mark jump" ><i ></i><b >我的共享</b><cite ><i ></i></cite></div>
												</div>
											</div>
										</div>
										<div class="custom_specific" ></div>
									</div>
								</div>
							</div>
							<div class="col_10" >
								<div class="hb_itemlist" >
									<div class="mod_operations" >
										<button type="button" class="pn pn_add y" ><i ></i><span >客户</span></button>
										<span >共 3 条</span>
										<div class="operation" ><a href="###" ><i data-tip="排序" ></i></a><a href="###" ><i data-tip="显示字段" ></i></a><cite ><a data-tip="从Excel新增或更新数据" class="" href="/apps/1257073/import" ><i ></i><span >导入</span></a><a data-tip="将数据导出为Excel" href="###" ><i ></i><span >导出</span></a></cite><cite ><span class="pn_switch pn_switch_off" ><span class="checkbox" ></span><em class="on" >表格对外服务</em><em class="off" >表格对外服务</em></span></cite></div>
										<div class="item_search cl" ><em class="drop" ></em><em class="clear" style="display:;" ></em><i data-tip="搜索" ></i>
											<input type="text" class="s_input" placeholder="在结果中搜索" >
										</div>
									</div>
									<div class="mod_itemlist" style="min-height:150px;" ><span class="guidepoint gp_batch" data-tip="如果不需要演示数据，可以删除数据" ><span ></span></span>
										<noscript >
										</noscript>
										<div class="fixedDataTableLayout_main public_fixedDataTable_main" style="height: 582px; width: 980px;" >
											<div class="fixedDataTableLayout_rowsContainer" style="height: 565px; width: 980px;" >
												<div class="fixedDataTableColumnResizerLineLayout_main fixedDataTableColumnResizerLineLayout_hiddenElem public_fixedDataTableColumnResizerLine_main" style="width:0;height:582px;left:0;" >
													<div class="fixedDataTableColumnResizerLineLayout_mouseArea" style="height:582px;" ></div>
												</div>
												<div style="width: 980px; height: 44px; z-index: 1; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
													<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main fixedDataTableLayout_header public_fixedDataTable_header" style="width: 980px; height: 44px;" >
														<div class="fixedDataTableRowLayout_body" >
															<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																	<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" >
																		<div style="height:44px;line-height:44px;" >
																			<input title="批量操作数据" type="checkbox" name="checkAll" >
																		</div>
																	</div>
																</div>
															</div>
															<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >客户名称</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >客户来源</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >销售状态</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >销售人员</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >联络时间</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >预计签约时间</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >预计金额</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >公司地址</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >联系方式</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >备注</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																		<div class="fixedDataTableCellLayout_columnResizerContainer" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_columnResizerKnob public_fixedDataTableCell_columnResizerKnob" style="height:44px;" ></div>
																		</div>
																		<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1" style="height:44px;" >
																			<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																				<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																					<div class="public_fixedDataTableCell_cellContent" ><a href="###" class="" ><em >附件</em><i ></i></a></div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
														</div>
													</div>
												</div>
												<div style="position:absolute;pointer-events:auto;transform:translate3d(0px,44px,0);backface-visibility:hidden;" >
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" >
																			<div style="height:44px;line-height:44px;" >1</div>
																		</div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="BOSE 专卖店（北京蓝色港湾店）" >BOSE 专卖店（北京蓝色港湾店）</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="电话咨询" >电话咨询</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="<span class='mod_category catcolor_o color_e' title='付款完成' cId='5'>付款完成</span>" ><span class="mod_category catcolor_o color_e" title="付款完成" cid="5">付款完成</span></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="可馨" >可馨</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="2015-07-16" >2015-07-16</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="2015-08-08" >2015-08-08</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="76000元" >76000元</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="北京市朝阳区朝阳公园路6号蓝色港湾17号楼L-SA-284号" >北京市朝阳区朝阳公园路6号蓝色港湾17号楼L-SA-284号</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="电话：010-59056986" >电话：010-59056986</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 44px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_highlighted public_fixedDataTableRow_odd custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" >
																			<div style="height:44px;line-height:44px;" >2</div>
																		</div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="Apple Store 零售店（三里屯）" >Apple Store 零售店（三里屯）</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="媒体广告" >媒体广告</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="<span class='mod_category catcolor_o color_a' title='客户拜访' cId='2'>客户拜访</span>" ><span class="mod_category catcolor_o color_a" title="客户拜访" cid="2">客户拜访</span></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="安娜" >安娜</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="2015-08-06" >2015-08-06</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="2015-08-28" >2015-08-28</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="50000元" >50000元</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="北京市朝阳区三里屯路19号院三里屯太古里6号楼" >北京市朝阳区三里屯路19号院三里屯太古里6号楼</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="店面电话：010-59312100店面经理：Jonney 18612345678" >店面电话：010-59312100店面经理：Jonney 18612345678</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="营业时间：星期一至星期日：上午 10:00 - 晚上 10:00" >营业时间：星期一至星期日：上午 10:00 - 晚上 10:00</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 88px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" >
																			<div style="height:44px;line-height:44px;" >3</div>
																		</div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="Tesla 体验展厅（北京侨福芳草地店）" >Tesla 体验展厅（北京侨福芳草地店）</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="熟人推荐" >熟人推荐</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="<span class='mod_category catcolor_o color_b' title='合同签订' cId='4'>合同签订</span>" ><span class="mod_category catcolor_o color_b" title="合同签订" cid="4">合同签订</span></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="雨涵" >雨涵</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="2015-08-08" >2015-08-08</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="2015-08-24" >2015-08-24</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="100000元" >100000元</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="北京市朝阳区东大桥路9号侨福芳草地 L1-20单元" >北京市朝阳区东大桥路9号侨福芳草地 L1-20单元</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="体验中心电话：010-56692669" >体验中心电话：010-56692669</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="工作时间：周一到周日 10:00 am - 10:00 pm" >工作时间：周一到周日 10:00 am - 10:00 pm</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 132px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_highlighted public_fixedDataTableRow_odd custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 176px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 220px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_highlighted public_fixedDataTableRow_odd custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 264px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 308px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_highlighted public_fixedDataTableRow_odd custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 352px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 396px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_highlighted public_fixedDataTableRow_odd custom_row public_fixedDataTable_bodyRow" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
													<div style="width: 980px; height: 44px; z-index: 0; transform: translate3d(0px, 440px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
														<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even custom_row public_fixedDataTable_bodyRow fixedDataTableLayout_hasBottomBorder public_fixedDataTable_hasBottomBorder" style="width: 980px; height: 44px;" >
															<div class="fixedDataTableRowLayout_body" >
																<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																		<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" ><span ></span></div>
																	</div>
																</div>
																<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																	<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:222px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:222px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:80px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:80px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:68px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:68px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:114px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:114px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height: 44px; width: 130px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width: 130px; overflow: hidden; text-overflow: ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:329px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:329px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:357px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:357px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:314px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:314px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																			<div class="fixedDataTableCellLayout_wrap1 public_fixedDataTableCell_wrap1 custom_cell" style="height:44px;width:44px;" >
																				<div class="fixedDataTableCellLayout_wrap2 public_fixedDataTableCell_wrap2" >
																					<div class="fixedDataTableCellLayout_wrap3 public_fixedDataTableCell_wrap3" >
																						<div class="public_fixedDataTableCell_cellContent" >
																							<div style="width:44px;overflow:hidden;text-overflow:ellipsis;" title="" ></div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
															</div>
														</div>
													</div>
												</div>
												<div style="width: 980px; height: 44px; z-index: 1; transform: translate3d(0px, 521px, 0px); backface-visibility: hidden;" class="fixedDataTableRowLayout_rowWrapper" >
													<div class="fixedDataTableRowLayout_main public_fixedDataTableRow_main fixedDataTableLayout_footer public_fixedDataTable_footer" style="width: 980px; height: 44px;" >
														<div class="fixedDataTableRowLayout_body" >
															<div style="height:44px;left:0;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																<div class="fixedDataTableCellGroupLayout_cellGroup" style="height:44px;position:absolute;width:42px;z-index:2;transform:translate3d(0px,0px,0);backface-visibility:hidden;" >
																	<div class="fixedDataTableCellLayout_main fixedDataTableCellLayout_alignCenter public_fixedDataTableCell_main custom_cell custom_seq" style="height:44px;width:42px;left:0;" >
																		<div class="itemstat_title" style="height:44px;line-height:44px;" data-tip="统计" >=</div>
																	</div>
																</div>
															</div>
															<div style="height:44px;left:42px;" class="fixedDataTableCellGroupLayout_cellGroupWrapper" >
																<div class="fixedDataTableCellGroupLayout_cellGroup" style="height: 44px; position: absolute; width: 2005px; z-index: 0; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:237px;left:0;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:237px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:95px;left:320px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:83px;left:415px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:498px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height:44px;width:129px;left:627px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 145px; left: 756px;" >
																		<div class="itemstat_column" ><span >求和：</span><em  title="226000">226000</em><span >元</span></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 344px; left: 901px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 372px; left: 1245px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 329px; left: 1617px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																	<div class="fixedDataTableCellLayout_main public_fixedDataTableCell_main" style="height: 44px; width: 59px; left: 1946px;" >
																		<div class="itemstat_column" ></div>
																	</div>
																</div>
															</div>
															<div class="fixedDataTableRowLayout_fixedColumnsDivider public_fixedDataTableRow_fixedColumnsDivider" style="left:42px;height:44px;" ></div>
														</div>
													</div>
												</div>
												<div class="fixedDataTableLayout_bottomShadow public_fixedDataTable_bottomShadow" style="top:521px;" ></div>
											</div>
											<div class="ScrollbarLayout_main ScrollbarLayout_mainVertical public_Scrollbar_main" style="top:44px;height:477px;z-index:99;" tabindex="0" >
												<div class="ScrollbarLayout_face ScrollbarLayout_faceVertical public_Scrollbar_face" style="height:462.1012396694215px;transform:translate3d(0px,4px,0);backface-visibility:hidden;" ></div>
											</div>
											<div class="fixedDataTableLayout_horizontalScrollbar public_fixedDataTable_horizontalScrollbar" style="height: 15px; width: 980px;" >
												<div style="height: 15px; position: absolute; overflow: hidden; width: 980px; transform: translate3d(0px, 0px, 0px); backface-visibility: hidden;" >
													<div class="ScrollbarLayout_main ScrollbarLayout_mainHorizontal public_Scrollbar_main public_Scrollbar_mainOpaque" style="width: 980px; z-index: 99;" tabindex="0" >
														<div class="ScrollbarLayout_face ScrollbarLayout_faceHorizontal public_Scrollbar_face" style="width: 461.174px; transform: translate3d(4px, 0px, 0px); backface-visibility: hidden;" ></div>
													</div>
												</div>
											</div>
										</div>
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
				<div class="hb_item_edit" >
					<div class="hb_mask_item hb_mask_item_animate color_a" style="display:block;top:0;" >
						<div class="mask_item_body" ></div>
					</div>
					<div class="hb_item_body" >
						<div class="hb_item_head cl" >
							<div class="ybox" ><span class="close"  class=" am-btn am-btn-primary"
  data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}"><i ></i></span></div>
							<div class="app_icon" ><i class="appcolor color_a" ></i></div>
							<div class="title" >
								<h1 >创建 客户</h1>
							</div>
						</div>
						<div class="hb_item_container cl" >
							<div class="hb_item_content" >
								<div class="hb_doc_scroll" >
									<div class="hb_item_meta cl" >
										<div class="info cl" >
											<div class="meta" ><span ><a class="" href="#" ><s:property value="#session.user.getName()" />的工作区</a></span><em >•</em><span ><a class=" active" href="#" onclick="window.location.href='homePage.jsp'">客户信息</a></span></div>
										</div>
									</div>
									<form action="save" method="post" name="saveform">
									<div class="hb_doc" style="padding-bottom:0;" >
										<div class="hb_item_table table_edit">
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >客户名称</span><span > </span><i class="required" >*</i></div>
														<div class="item_field_value" >
															<div class="value_text_small_edit" >
																<input type="text" value="" class="px" name="client.name" id="clientname" onchange="namecheck()"/>
																<span id="namecheck"></span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >客户来源</span><span > </span><i class="required" >*</i></div>
														<div class="item_field_value" >
															<div class="value_category_list" >
															<input type="hidden" name="client.source" id="addsource"/>
																<ul class="mod_categorylist style_list cl" >
																	<li value="1" id="source1" onclick="source(this.value)"><span class="mod_category catcolor_o"><span  >推广活动</span></span></li>
																	<li value="2" id="source2" onclick="source(this.value)"><span class="mod_category catcolor_o" ><span >媒体广告</span></span></li>
																	<li value="3" id="source3" onclick="source(this.value)"><span class="mod_category catcolor_o" ><span >电话咨询</span></span></li>
																	<li value="4" id="source4" onclick="source(this.value)"><span class="mod_category catcolor_o" ><span >熟人推荐</span></span></li>
																	<li value="5" id="source5" onclick="source(this.value)"><span class="mod_category catcolor_o" ><span >其他</span></span></li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >销售状态</span><span > </span><i class="required" >*</i></div>
														<div class="item_field_value" >
															<div class="value_category_list" >
																<input type="hidden" name="client.status" id="addstatus"/>
																<ul class="mod_categorylist style_list cl" >
																	<li value="1" id="status1" onclick="chValue(this.value)"><span class="mod_category catcolor_o">取得联系</span></li>
																	<li value="2" id="status2" onclick="chValue(this.value)"><span class="mod_category catcolor_o" ><span >客户拜访</span></span></li>
																	<li value="3" id="status3" onclick="chValue(this.value)"><span class="mod_category catcolor_o" ><span >商务谈判</span></span></li>
																	<li value="4" id="status4" onclick="chValue(this.value)"><span class="mod_category catcolor_o" ><span >合同签订</span></span></li>
																	<li value="5" id="status5" onclick="chValue(this.value)"><span class="mod_category catcolor_o" ><span >付款完成</span></span></li>
																	<li value="6" id="status6" onclick="chValue(this.value)"><span class="mod_category catcolor_o" ><span >本案结束</span></span></li>
																	<li value="7" id="status7" onclick="chValue(this.value)"><span class="mod_category catcolor_o" ><span >失败</span></span></li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >销售人员</span><span ></span></div>
														<div class="item_field_value" >
															<div class="value_contact" ><span id="chosale"></span><span class="value_add_o" id="xisheng"><i > +</i></span>
															<input type="text" name="clients.sales" id="sale"/>
															<div class="popover in">
																<h3 class="popover-title">工作区成员</h3>
																<div class="popover-content">
																	<div class="pop_spacemember" data-reactid=".3.2.0">
																		<input type="text" placeholder="搜索" class="px px_search">
																		<div class="avatarlist">
																		<%List<SalesBean> t = (List<SalesBean>)session.getAttribute("saleList");%>
																			<ul class="mod_avatarlist cl" id="testsale">
																				<c:forEach var="sale" items="${saleList}"> 
																					<li class="mod_avatar avt_middle">
																						<img src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32" class="avatar" draggable="false" >
																						<span  class="ting">${sale.id }</span>  
																						<span>${sale.name }</span>  
																					</li> 
																				</c:forEach>  
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
															</div>
															
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >联络时间</span><span > </span></div>
														<div class="item_field_value" >
														<input type="hidden" name="client.statime" id="statime"/>
															<div class="value_date_edit" >
																<div class="mod_time am-input-group am-datepicker-date" data-am-datepicker="{format: 'yyyy-mm-dd'}">
																	<p class="other date_btn" id="time1">
	 																	<span class="rc-calendar-picker am-input-group-btn am-datepicker-add-on" id="doc-datepicker" >
	 																	<input type="hidden" class="date_inp"/>
	 																	<span class="value_add_o" ><i ></i></span></span>
 																	</p>
																</div>
 															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >预计签约时间</span><span > </span></div>
														<div class="item_field_value" >
														<input type="hidden" name="client.pretime" id="pretime"/>
															<div class="value_date_edit" >
																<div class="mod_time am-input-group am-datepicker-date" data-am-datepicker="{format: 'yyyy-mm-dd'}">
																	<p class="other date_btn" >
	 																	<span class="rc-calendar-picker am-input-group-btn am-datepicker-add-on" id="doc-datepicker" >
																		<input type="hidden" class="date_inp2"/>
	 																	<span class="value_add_o" ><i ></i></span></span>
 																	</p>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >预计金额</span><span > </span></div>
														<div class="item_field_value" >
															<div class="value_number_edit" ><span ></span>
																<input type="text" value="" class="px" name="client.premoney">
																<em class="unit" >元</em><span ></span></div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >公司地址</span><span > </span></div>
														<div class="item_field_value" >
															<div class="value_text_small_edit" >
																<input type="text" value="" class="px" name="client.adress">
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >联系方式</span><span > </span></div>
														<div class="item_field_value" >
															<div class="value_text_large_edit" >
															<input type="text"  name="client.contact" class="px">
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >附件</span></div>
														<div class="item_field_value" >
															<div class="value_file" >
																<div class="value_add" >
																	<form style="display:none;">
																		<input type="file" multiple=>
																	</form>
																	<a href="###" class="pn pn_simple" ><i ></i><span >上传文件</span></a></div>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label"><span >备注</span><span > </span></div>
														<div class="item_field_value">
															<div class="value_text_rich_edit" >
																<div class="simditor">
																	<div class="simditor-wrapper" style="overflow: visible">
																		<div class="simditor-toolbar" style="width: 754px!important;">
																			<ul>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-font" href="javascript:;" title="文字颜色"><span class="fa fa-font"></span></a>
																					<div class="toolbar-menu toolbar-menu-font">
																						<div class="menu-create-font">
																							<table>
																								<tbody>
																									<tr>
																										<td data-name="black" data-param="#333333" style="background: rgb(51, 51, 51);"><br></td>
																										<td data-name="gray" data-param="#CCCCCC" style="background: rgb(204, 204, 204);"><br></td>
																										<td data-name="red" data-param="#DC0000" style="background: rgb(220, 0, 0);"><br></td>
																									</tr>
																									<tr>
																										<td data-name="orange" data-param="#E46933" style="background: rgb(228, 105, 51);"><br></td>
																										<td data-name="yellow" data-param="#FFD24D" style="background: rgb(255, 210, 77);"><br></td>
																										<td data-name="green" data-param="#00933B" style="background: rgb(0, 147, 59);"><br></td>
																									</tr>
																									<tr>
																										<td data-name="cyan" data-param="#00B2B2" style="background: rgb(0, 178, 178);"><br></td>
																										<td data-name="blue" data-param="#005593" style="background: rgb(0, 85, 147);"><br></td>
																										<td data-name="purple" data-param="#B200B2" style="background: rgb(178, 0, 178);"><br></td>
																									</tr>
																								</tbody>
																							</table>
																						</div>
																					</div>
																				</li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-title" href="javascript:;" title="标题文字"><span></span></a>
																					<div class="toolbar-menu toolbar-menu-title">
																						<ul>
																							<li><a tabindex="-1" unselectable="on" class="menu-item menu-item-normal" href="javascript:;" title="普通文本" data-param="p"><span>普通文本</span></a></li>
																							<li><span class="separator"></span></li>
																							<li><a tabindex="-1" unselectable="on" class="menu-item menu-item-h1" href="javascript:;" title="标题 1" data-param="h1"><span>标题 1</span></a></li>
																							<li><a tabindex="-1" unselectable="on" class="menu-item menu-item-h2" href="javascript:;" title="标题 2" data-param="h2"><span>标题 2</span></a></li>
																							<li><a tabindex="-1" unselectable="on" class="menu-item menu-item-h3" href="javascript:;" title="标题 3" data-param="h3"><span>标题 3</span></a></li>
																						</ul>
																					</div>
																				</li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-bold" href="javascript:;" title="加粗文字 ( Ctrl + b )"><span class="fa fa-bold"></span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-strikethrough" href="javascript:;" title="删除线文字"><span class="fa fa-strikethrough"></span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-underline" href="javascript:;" title="下划线文字 ( Ctrl + u )"><span class="fa fa-underline"></span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-image" href="javascript:;" title="插入图片"><span class="fa fa-picture-o"></span></a>
																					<div class="toolbar-menu toolbar-menu-image">
																						<ul>
																							<li><a tabindex="-1" unselectable="on" class="menu-item menu-item-upload-image" href="javascript:;" title="本地图片"><span>本地图片</span>
																								<input type="file" title="上传图片" name="upload_file" accept="image/*">
																								</a></li>
																							<li><a tabindex="-1" unselectable="on" class="menu-item menu-item-external-image" href="javascript:;" title="外链图片"><span>外链图片</span></a></li>
																						</ul>
																					</div>
																				</li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-ol" href="javascript:;" title="有序列表 ( ctrl + / )"><span class="fa fa-list-ol"></span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-ul" href="javascript:;" title="无序列表 ( Ctrl + . )"><span class="fa fa-list-ul"></span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-blockquote" href="javascript:;" title="引用"><span class="fa fa-quote-left"></span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-table" href="javascript:;" title="表格"><span class="fa fa-table"></span></a>
																					<div class="toolbar-menu toolbar-menu-table">
																						<div class="menu-create-table">
																							<table>
																								<tbody>
																									<tr>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																									</tr>
																									<tr>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																									</tr>
																									<tr>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																									</tr>
																									<tr>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																									</tr>
																									<tr>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																										<td></td>
																									</tr>
																									
																								</tbody>
																							</table>
																						</div>
																						<div class="menu-edit-table">
																							<ul>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="deleteRow"><span>删除行</span></a></li>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertRowAbove"><span>在上面插入行</span></a></li>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertRowBelow"><span>在下面插入行</span></a></li>
																								<li><span class="separator"></span></li>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="deleteCol"><span>删除列</span></a></li>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertColLeft"><span>在左边插入列</span></a></li>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertColRight"><span>在右边插入列</span></a></li>
																								<li><span class="separator"></span></li>
																								<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="deleteTable"><span>删除表格</span></a></li>
																							</ul>
																						</div>
																					</div>
																				</li>
																				<li><a tabindex="-1" unselectable="on" class="toolbar-item toolbar-item-link" href="javascript:;" title="插入链接"><span class="fa fa-link"></span></a></li>
																			</ul>
																		</div>
																		<div class="simditor-placeholder"></div>
																		<div class="simditor-body" contenteditable="true" style="height: 100px;border: 1px red solid;">
																			<textarea name="client.remark" class="pt"></textarea>
																		</div>
																		<div class="simditor-popover image-popover" style="">
																			<div class="link-settings">
																				<div class="settings-field">
																					<label>图片地址</label>
																					<input class="image-src" type="text">
																					<a class="btn-upload" href="javascript:;" title="上传图片" tabindex="-1"> <span class="fa fa-upload"></span>
																					<input type="file" title="上传图片" name="upload_file" accept="image/*">
																					</a> </div>
																			</div>
																		</div>
																		<div class="simditor-popover table-popover" style="">
																			<ul>
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="deleteRow"><span>删除行</span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertRowAbove"><span>在上面插入行</span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertRowBelow"><span>在下面插入行</span></a></li>
																				
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="deleteCol"><span>删除列</span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertColLeft"><span>在左边插入列</span></a></li>
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="insertColRight"><span>在右边插入列</span></a></li>
																				
																				<li><a tabindex="-1" unselectable="on" class="menu-item" href="javascript:;" data-param="deleteTable"><span>删除表格</span></a></li>
																			</ul>
																		</div>
																		<div class="simditor-popover link-popover" style="">
																			<div class="link-settings">
																				<div class="settings-field">
																					<label>文本</label>
																					<input class="link-text" type="text">
																					<a class="btn-unlink" href="javascript:;" title="取消链接" tabindex="-1"><span class="fa fa-unlink"></span></a> </div>
																				<div class="settings-field">
																					<label>链接</label>
																					<input class="link-url" type="text">
																				</div>
																			</div>
																		</div>
																	</div>
																	<textarea style="display: none;"></textarea>
																	<div tabindex="-1" contenteditable="true" class="simditor-paste-area" style="width: 1px; height: 1px; overflow: hidden; position: fixed; right: -10px; bottom: 100px;"></div>
																	<textarea tabindex="-1" class="simditor-clean-paste-area" style="width: 1px; height: 1px; overflow: hidden; position: fixed; right: -10px; bottom: 101px;">ee</textarea>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
 
											<div class="item_row cl row_undefined" >
												<div class="item_field cl" style="display:;" >
													<div >
														<div class="item_field_label" ><span >附件</span></div>
														<div class="item_field_value" >
															<div class="value_file" >
																<div class="value_add" >
																	<form style="display:none;">
																		<input type="file" multiple=>
																	</form>
																	<a href="###" class="pn pn_simple" ><i ></i><span >上传文件</span></a></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="hb_item_button">
											<button class="pn" >保存</button>
											<button type="button" class="pn pn_normal" onclick="window.location.href='addClient.jsp'">取消</button>
											<!--<button class="pn pn_normal" type="reset">取消</button>-->
											<p >
												<label >
													<input type="checkbox" class="pc" value="1" >
													<span >保存后继续创建下一条</span></label>
											</p>
										</div>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="am-modal am-modal-no-btn" tabindex="-1" id="doc-modal-1">
  <div class="am-modal-dialog">
    <div class="am-modal-hd"> 
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
    </div>
    <div class="am-modal-bd am-center">
    	<p>确定离开本页？</p>

    	<button type="button" class="am-btn lpage  am-btn-danger">确定</button>
    </div>
  </div>
</div>
<script src="assets/js/jquery.min.js"></script> 
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
<script>
	jQuery(document).ready(function($) {
		$(".mod_categorylist").first().find('li').each(function(index, el) {
			$(this).click(function(event) {
				 $(this).find(".catcolor_o").toggleClass('color_z')
				 $(this).siblings('li').find(".catcolor_o").removeClass('color_z')
			});
		});
		$(".mod_categorylist").eq(1).find('li').each(function(index, el) {
			$(this).click(function(event) {
				  var a = 'abcdefghijklmnopz';
	  			  var letter = 	a.charAt(parseInt(Math.random()*a.length+1)) 
				 $(this).find(".catcolor_o").toggleClass('color_'+letter)
				 $(this).siblings('li').find(".catcolor_o").attr("class","mod_category catcolor_o")
			});
		});
		
		// 工作区添加头像
		  $(".mod_avatar").on("click",function (argument) {
		  		 
		  		 /*var obj_lis = document.getElementById("testsale").getElementsByTagName("li");
		  		 alert(obj_lis.length)
					for(i=0;i<obj_lis.length;i++){
						obj_lis[i].onclick = function(){
							alert(this.innerHTML);
						}
					}
					alert(obj_lis.length)*/
					
		  		  /*var p_con ="<ul class='mod_avatarlist cl'><li><span class='drop'></span><span class='mod_avatar avt_middle'><img src='https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32' class='avatar' draggable='false' ><span id='zanshi'>tttt</span></span></li></ul>"
		  		 $(this).parents(".value_contact").html(p_con)*/
		  })
	});
	
		//选择销售人员的
		$(".mod_avatar").click(function(){
		$("#xisheng").hide();
　　		$("#chosale").html($(this).html());
		var sale = $("span.ting").html();
		alert(sale)
		document.getElementById("sale").value = sale;
	//	$("#sale").val(sale);
	//	document.getElementById("addsale").value=sale;
	//	alert(document.getElementById("addsale").value);
		
	//	$("#addsale").html($("span.ting").html());

	//	$("#addsource").html($("span.mod_avatar").html());
	//	var sale = document.getElementById("chosale").innerHTML;
		
　　	});
	
	$(".value_contact").on("click", function(e){
		    $(this).find('.popover').addClass('left-bottom');
 		    $(document).one("click", function(){
		        $(".popover").removeClass('left-bottom');
 		   	});

		   		 e.stopPropagation();
		});
		$(".left-bottom").on("click", function(e){
				    e.stopPropagation();
				});
	 	 /*$(".date_btn").click(function () {
	 	 	 var dateNum =$(this).find('input[type=hidden]').value();
	 	 	 console.log(dateNum);
	 	 	 var datestr ="<span class='rc-calendar-picker' ><span class='getdate' readonly='' value=''><span >"+dateNum+"</span><i class='drop'></i></span></span>"
	 	 	 $(this).html(datestr)
	 	 })*/
		$(".date_inp").change(function(event) {
			 var d_str1 = "<span class='rc-calendar-picker'><span class='getdate' readonly='' value='' ><span  id='time'>"+$(this).val()+"</span></span></span>"
			$(this).parents(".date_btn").html(d_str1)
			var t = $(this).val();
			$("#statime").val(t);
			
		});
		$(".date_inp2").change(function(event) {
			 var d_str1 = "<span class='rc-calendar-picker'><span class='getdate' readonly='' value='' ><span  id='time'>"+$(this).val()+"</span></span></span>"
			$(this).parents(".date_btn").html(d_str1)
			var t = $(this).val();
			$("#pretime").val(t);
			
		});
		
	
		
		$(".lpage").click(function(event) {
			location.href="homePage.jsp"
		});
		
		//将status的值赋值给隐藏域用的
		function chValue(value){
			var status = value;
			document.getElementById("addstatus").value = status;
		}
		function source(value){
			var source = value;
			document.getElementById("addsource").value = source;
		}
		
		
		function namecheck(){
			var name = document.getElementById("clientname").value;
			alert(name);
			
		}
</script> 

</body>
</html>