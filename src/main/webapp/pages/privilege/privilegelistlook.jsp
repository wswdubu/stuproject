﻿<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@include file="/pages/common/base.jsp" %>
<base href="<%=basePath%>">
<form id="pagerForm" method="post" action="privilege_listlook.do">
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${numPerPage}" />
	<input type="hidden" name="orderField" value="${orderField}" />
	<input type="hidden" name="orderDirection" value="${orderDirection}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" onsubmit="return dwzSearch(this, 'dialog');" action="privilege_listlook.do" method="post">
	<div class="searchBar">
		<ul class="searchContent">
			<li>
				<label><tsp:transproname proname="privilege.priname"/>：</label>
				<input type="text" name="privilege.priname" value=""/>
			</li>
		</ul>
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div layoutH="116" id="w_list_print">
	<table class="table" width="98%" targetType="dialog" asc="asc" desc="desc">
		<thead>
			<tr>
				<th orderField="id" <s:if test="orderField=='id'">class="${orderDirection}"</s:if> title="排序">编号</th> 
				<th orderField="priurl" <s:if test="orderField=='priurl'">class="${orderDirection}"</s:if>><tsp:transproname proname="privilege.priurl"/></th>
				<th orderField="priname" <s:if test="orderField=='priname'">class="${orderDirection}"</s:if>><tsp:transproname proname="privilege.priname"/></th>
				<th orderField="type" <s:if test="orderField=='type'">class="${orderDirection}"</s:if>><tsp:transproname proname="privilege.type"/></th>
			    <th>查找带回</th>
			</tr>
		</thead>
		<tbody>
		<s:iterator id="pojo" value="privilegelist">
			<tr target="sid_entity" rel="${pojo.id}">
				<td>${pojo.id}</td>
				<td>${pojo.priurl}</td>
				<td>${pojo.priname}</td>
				<td><tsp:selectview name="privilege.type" value="${pojo.type}"/></td>
				<td>
			<a class="btnSelect" href="javascript:$.bringBack({id:'${pojo.id }',priname:'${pojo.priname}'})" multLookup="empItems" title="查找带回">选择</a>
				</td>
			</tr>
		 </s:iterator>
		</tbody>
	</table>
	</div>
	<div class="panelBar" >
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="dialogPageBreak({numPerPage:this.value})">
			<option <s:if test="numPerPage==5">selected="selected"</s:if> value="5" >5</option>
				<option <s:if test="numPerPage==10">selected="selected"</s:if> value="10" >10</option>
				<option <s:if test="numPerPage==20">selected="selected"</s:if> value="20" >20</option>
				<option <s:if test="numPerPage==50">selected="selected"</s:if> value="50">50</option>
				<option <s:if test="numPerPage==100">selected="selected"</s:if> value="100">100</option>
				<option <s:if test="numPerPage==200">selected="selected"</s:if> value="200">200</option>
			</select>
			<span>条，共${totalCount}条</span>
		</div>
		
		<div class="pagination" targetType="dialog" totalCount="${totalCount}" numPerPage="${numPerPage}" pageNumShown="10" currentPage="${pageNum}"></div>

	</div>
</div>

