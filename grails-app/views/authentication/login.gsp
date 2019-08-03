<meta name="layout" content="public"/>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">
                    <g:img dir="images" file="login.png" class="profile-img"/>
                    <h1 class="text-center login-title">Login Panel</h1>
                    <div class="account-wall">
                        <g:form controller="authentication" action="doLogin" class="form-signin">
                            <div class="form-group text-center">
                            <label for="email">Email address:</label>
                            <g:textField name="email" class="form-control" placeholder="Email" required="required" />
                            </div>
                            <div class="form-group text-center">
                            <label for="password">Password:</label>
                            <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                            </div>
                            <g:submitButton class="btn btn-sm btn-primary btn ml-xl-5" name="login" value="Login"/>
                            <g:field type="reset" class="btn btn-sm btn-primary btn ml-xl-5" name="clear" value="Clear" />
                            <label>Are you new here?</label>
                            <g:link controller="authentication" action="registration" class="btn btn-link">Register now</g:link>

                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>