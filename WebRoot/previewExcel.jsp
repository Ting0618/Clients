<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<meta name="renderer" content="webkit">
		<title>客户信息 - 伙伴云表格</title>
		<link rel="icon" href="https://o1aqprei7.qnssl.com/favicon.ico">
		<link rel="icon" href="https://o1aqprei7.qnssl.com/favicon.ico">
		<link type="text/css" rel="stylesheet" media="all" href="https://o1aqprei7.qnssl.com/assets/css/hb_style.css?d63f0748b8f3671ac113">
		<style id="customStyle">
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
	height: auto !important;
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

.hb_doc_scroll,.container_scroll {
	height: 694px;
}

.hb_market .market_main,.hb_market .market_side,.hb_market .market_appitem,.hb_market .market_body
	{
	height: 637px;
}
.tbl, .tbl th, .tbl td {
	border: 1px solid #eeecec;
}
.tbl th, .tbl td {
	padding: 0.5%;
	text-align: center;
}
.tbl {
	width: 1200px;
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
<body class="hb_setting_workspace">
		<div id="root">
			<div class="hb_wrap">
				<div>
					<div>
						<div class="hb_workspaces">
							<div class="workspaces_h">
								<span>工作区</span>
								<p>
									和小伙伴一起共享数据的地方
								</p>
							</div>
							<div class="workspaces_c cl">
								<ul class="mod_workspaces cl">
									<li>
										<div class="mod_cover c_business"
											style="background-color: #79BEAF;">
											<span class="bl"></span><span class="br"></span>
											<h3 class=""
												style="color: #FFFFFF; background-color: #79BEAF;">
												${user.getName()}的工作区
											</h3>
											<img
												src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/space_cover/1045757/0"
												class="photo">
										</div>
										<noscript>
										</noscript>
									</li>
									<li class="workspace_add">
										<div>
											<i></i><span>创建工作区</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="switch_workspaces undefined">
							<i title="选择工作区"></i><span class="ws_title">切换工作区</span>
						</div>
						<div class="switch_notice">
							<i data-tip="通知"></i>
						</div>
						<div class="hb_header undefined">
							<div class="set cl">
								<span class="set_icon" data-tip="下载手机客户端" data-place="bottom"><i></i>
								</span><em class="pipe"></em><span class="set_icon" data-tip="探索"
									data-place="bottom"><i></i><em class="new"></em>
								</span><em class="pipe"></em><span class="mod_avatar avt_small"
									title="大脑瓜子泽拉图"><img
										src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32"
										class="avatar" draggable="false"><span>大脑瓜子泽拉图</span>
								</span><a href="###" style="display: none;">hidden</a><a href="###"
									style="display: none;">hidden</a><a href="###"
									style="display: none;">hidden</a><a href="###"
									style="display: none;">解绑</a><a href="###"
									style="display: none;">解绑</a><a href="###"
									style="display: none;">解绑</a>
							</div>
							<div class="nav nav_second">
								<h1>
									<span><cite>客户信息</cite>
									</span>
								</h1>
								<h2>
									<span><cite>导入 Excel 新增或更新数据</cite>
									</span>
								</h2>
							</div>
						</div>
						<div class="hb_mask" style="display: none;"></div>
						<div class="hb_headtips hb_headtips_hide">
							<span class="hb_close"><i></i>
							</span>
							<p class="info"></p>
						</div>
						<div class="hb_notice">
							<div class="notice_title">
								<h4>
									通知
								</h4>
							</div>
							<div class="mod_notifications">
								<div>
									<div class="notice_empty">
										<i></i>
										<p>
											<span>没有</span><span>未读</span><span>通知</span>
										</p>
									</div>
								</div>
								<div class="notice_read">
									<a href="###">查看全部已读通知</a>
								</div>
							</div>
						</div>
					</div>
					<div class="hb_setting">
						<div class="hb_cancel">
							<button type="button" class="pn pn_simple"
								onclick="window.history.go(-1)">
								返回
							</button>
						</div>
						<div class="setting_body">
							<div class="mod_import cl">
								<div class="step">
									<div class="line"></div>
									<div class="line line_02"></div>
									<div class="line line_03"></div>
									<ul>
										<li class="cur">
											<span><i></i><b>1</b>
											</span>
											<p>
												上传Excel
											</p>
										</li>
										<li class="">
											<span><i></i><b>2</b>
											</span>
											<p>
												预览数据
											</p>
										</li>
										<li class="">
											<span><i></i><b>3</b>
											</span>
											<p>
												匹配字段
											</p>
										</li>
										<li class="">
											<span><i></i><b>4</b>
											</span>
											<p>
												导入数据
											</p>
										</li>
									</ul>
								</div>
								<div class="upload cl">
									<p class="excel_tips">
										<a
											href="https://www.huoban.com/discovery/manual/data_update/data_import.html"
											target="_blank" class="btn_help"><i></i><span>帮助</span>
										</a><span>您将通过上传的Excel文件，批量追加或更新表格数据</span>
									</p>
									<h5>
										导入后只会保留Excel中的数据及通过公式计算后的值，设置的文字颜色等样式、合并的单元格、以及计算公式本身都不会被保留。
									</h5>
									<div class="select_file">
										<div class="excel_area cl">
											<div class="file_upload">
												<form style="display: none;">
													<input type="file"
														accept=".csv, text/csv, .xls, application/vnd.ms-excel, .xlsx, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet">
												</form>

												<form action="preView" method="post" name="loginformx"
													enctype="multipart/form-data">
													<input type="file" name="file" onchange="Picture(this)"
														id="upload" value="file" />
													<div style="display: none" id="gogo">
														<input type="submit" value="打开" class="pn"/>
													</div>
													<!--<input type="submit" value="haha">  用这个出错 -->
												</form>

												<!--
										<form action="upl" method="post" name="loginformc">
											<button>ddd</button>
										</form>
										<a href="###" class="pn" >选择文件</a>
										-->
												<p>
													支持 20MB 以内的 xls、xlsx、csv 文件
												</p>
												<p>
													整个文件不超过1万行、200列
												</p>
											</div>
											<div class="file_drag">
												<p>
													或将文件拖拽到这里
												</p>
											</div>
										</div>
										<div class="excel_area cl" style="border: 1px red solid;">

										</div>
									</div>
									<div style="overflow:auto">
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
													<th>
													</th>
													<th>
														客户名称
													</th>
													<th>
														客户来源
													</th>
													<th>
														销售状态
													</th>
													<th>
														销售人员
													</th>
													<th>
														联络时间
													</th>
													<th>
														预计签约时间
													</th>
													<th>
														预计金额
													</th>
													<th>
														公司地址
													</th>
													<th>
														联系方式
													</th>
													<th>
														备注
													</th>
													<th>
														附件
													</th>
												</tr>
											</thead>
											<tbody>
												<!-- 开始循环 -->
												<c:choose>
													<c:when test="${not empty newClient}">

														<c:forEach items="${newClient}" var="var" varStatus="vs">
															<tr>
																<td class='center' style="width: 30px;">
																	<label>
																		<span class="lbl">${vs.index}</span>
																	</label>

																</td>

																<td><input type="text" value="${var.name}">
																</td>
																<td>
																	${var.source}
																</td>
																<td width="100px" background="color:red ">
																	<span class="mod_category catcolor_o color_e"
																		title="${var.status}" id="5">${var.status}</span>
																</td>
																<td>
																	${var.sales}
																</td>
																<td>
																	<fmt:formatDate value="${var.statime}"
																		pattern="yyyy-MM-dd" />

																</td>
																<td>
																	<fmt:formatDate value="${var.pretime}"
																		pattern="yyyy-MM-dd" />
																</td>
																<td>
																	${var.premoney}
																</td>
																<td>
																	${var.adress}
																</td>
																<td>
																	${var.contact}
																</td>
																<td>
																	${var.remark}
																</td>
																<td onclick="a()">
																	${var.attachment}
																</td>


															</tr>

														</c:forEach>


													</c:when>
													<c:otherwise>
														<tr class="main_info">
															<td colspan="100" class="center">
																没有导入数据
															</td>
														</tr>
													</c:otherwise>
												</c:choose>

											</tbody>
										</table>
									</div>
									<h4>
										<span>表格示例</span><em>有标准行列的一维数据表格</em>
									</h4>
									<div class="excel_legend legend_1"></div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
function Picture(input) {
	//	alert("Picture");
	var fileName = input.value;
	//	alert(fileName);
	if (fileName != null && fileName != "") {
		//lastIndexOf如果没有搜索到则返回为-1
		if (fileName.lastIndexOf(".") != -1) {
			var fileType = (fileName.substring(fileName.lastIndexOf(".") + 1,
					fileName.length)).toLowerCase();
			//	alert(fileType);
			var suppotFile = new Array();
			suppotFile[0] = "xls";
			suppotFile[1] = "xlsx";
			suppotFile[2] = "csv";
			suppotFile[3] = "txt";
			if (fileType == suppotFile[0] || fileType == suppotFile[1]
					|| fileType == suppotFile[2] || fileType == suppotFile[3]) {
				document.getElementById('gogo').style.display = 'block';//显示
			} else {
				alert("格式错误");
				window.location.reload();
			}
		}
	}
}
</script>

</body>
</html>