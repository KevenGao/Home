<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 成员列表 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh" onclick="javascript:window.location.href='/employee/list';"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-trash"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus" onclick="javascript:window.location.href='/employee/to_add';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th class="text-center hidden-xs">选择</th>
                            <th class="text-center hidden-xs">账号</th>
                            <th class="text-center hidden-xs">姓名</th>
                            <th class="text-center hidden-xs">关系</th>
                            <th class="text-center hidden-xs">备注</th>
                            <th class="text-center hidden-xs">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="emp">
                        <tr class="message-unread">
                            <td class="text-center hidden-xs">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="text-center">${emp.sn}</td>
                            <td class="text-center">${emp.name}</td>
                            <td class="text-center">${emp.department.name}</td>
                            <td class="text-center hidden-xs">
                                <span class="badge badge-warning mr10 fs11">${emp.post}</span>
                            </td>
                            <td class="text-center">
                                <a href="/employee/to_update?sn=${emp.sn}">编辑</a>
                                <a href="/employee/remove?sn=${emp.sn}">删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>