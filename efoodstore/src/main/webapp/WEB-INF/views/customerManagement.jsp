<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Page Client</h1>

            <p class="lead">Modification des infos du client.</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Nom</th>
                <th>Email</th>
                <th>Téléphone</th>
                <th>Pseudo</th>
                <th>Activé</th>

            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
