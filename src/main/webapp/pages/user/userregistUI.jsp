﻿<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@include file="/pages/common/base.jsp" %>
<base href="<%=basePath%>">
<div class="pageContent">
	<form method="post" action="user_insert.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
				<input name="user.id" type="hidden"/>
			<p>
				<label><tsp:transproname proname="user.userid"/>：</label>
				<input name="user.userid" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.realname"/>：</label>
				<input name="user.realname" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.password"/>：</label>
				<input name="user.password" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.gender"/>：</label>
				<tsp:select name="user.gender"/>
			</p>
			<p>
				<label><tsp:transproname proname="user.birthdate"/>：</label>
				<input class="Wdate" name="user.birthdate" type="text" maxlength="150" onFocus="WdatePicker()" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.identifynum"/>：</label>
				<input name="user.identifynum" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.email"/>：</label>
				<input name="user.email" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.phone"/>：</label>
				<input name="user.phone" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.homeaddress"/>：</label>
				<input name="user.homeaddress" type="text" maxlength="150" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.createtime"/>：</label>
				<input class="Wdate" name="user.createtime" type="text" maxlength="150" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value=""/>
			</p>
			<p>
				<label><tsp:transproname proname="user.description"/>：</label>
				<input name="user.description" type="text" maxlength="150" value=""/>
			</p>
			<div class="divider"></div>
			<p>
				<label><tsp:transproname proname="user.roles"/>：</label>
				<input name="roles.ids" type="hidden"/>
				<input name="roles.rolename" type="text"/>
				<a class="btnLook" href="role_listlooks.do" lookupGroup="roles">查找带回</a>	
			</p>
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
