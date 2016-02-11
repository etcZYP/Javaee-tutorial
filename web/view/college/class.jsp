<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/nav.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">

    <div class="container-fluid">
        <div>
            <h1 class="page-header">班级管理</h1>
        </div>
        <%--<c:forEach var="entrty" items="${classBelongSpec}">--%>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        班级信息
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="dataTable_wrapper">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">

                                <thead>
                                <tr>
                                    <th>所属专业</th>
                                    <th>班级号</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <%--<c:forEach var="className" items="${entrty.value}">--%>
                                <c:forEach var="clazz" items="${classList}">
                                    <tr>
                                        <td>${clazz.specName}</td>
                                        <td>${clazz.id}</td>
                                        <td>
                                            <a href="/class.do/delete?classId=${clazz.id}"
                                               onclick="return confirm('是否要删除该专业')">删除</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <%--</c:forEach>--%>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <%--</c:forEach>--%>

    </div>
    <a href="/view/college/class_add.jsp" class="btn btn-primary" role="button">添加班级</a>
    <!-- /.container-fluid -->
</div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->

<jsp:include page="/bottom.jsp"></jsp:include>
