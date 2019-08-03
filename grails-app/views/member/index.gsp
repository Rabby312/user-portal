%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['List']"/>

        %{--Actions--}%
        <span class="float-right">

        %{--Search Panel --}%
        <div class="btn-group">
            <g:form controller="member" action="index" method="GET">
                <div class="input-group" id="search-area">
                    <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name', email: 'Email', phone: 'phone']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                    <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">Search</button>
                    </span>
                </div>
            </g:form>
        </div>

        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="firstName" title="${g.message(code: "first.name")}"/>
                <g:sortableColumn property="lastName" title="${g.message(code: "last.name")}"/>
                <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
                <g:sortableColumn property="phone" title="${g.message(code: "phone")}"/>
            </tr>
            </thead>
            <tbody>
                <g:each in="${memberList}" var="info">
                    <tr>
                        <td>${info?.firstName}</td>
                        <td>${info?.lastName}</td>
                        <td>${info?.email}</td>
                        <td>${info?.phone}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    %{--Pagination Area--}%
    <div class="paginate">
        <g:paginate total="${total ?: 0}" />
    </div>
    </div>
</div>