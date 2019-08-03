%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">
                    <h1 class="text-center login-title">Change Password</h1>
                    <div class="account-wall">
        <g:form controller="member" action="update" class="form-signin">
            <g:hiddenField name="id" value="${member.id}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "change.password")}"/>
                <g:field type="reset" class="btn btn-primary btn ml-xl-5" name="clear" value="Clear" />
            </div>
        </g:form>
    </div>
</div>
            </div>
        </div>
        </div>
</div>