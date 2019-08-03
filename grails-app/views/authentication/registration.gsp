<meta name="layout" content="public"/>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-4 mx-auto">
                    <g:img dir="images" file="login.png" class="profile-img"/>
                    <h1 class="text-center registration-title">Registration Panel</h1>
                    <div class="account-wall">

        <g:form controller="authentication" action="doRegistration" class="form-registration">
            <g:render template="/member/form"/>
            <g:submitButton name="registration" value="Register" class="btn btn-primary btn ml-xl-5"/>
            <g:link controller="authentication" action="login" class="btn btn-primary btn ml-xl-5"><g:message code="cancel"/></g:link>
        </g:form>
</div>
                </div>
            </div>
        </div>
        </div>
</div>
