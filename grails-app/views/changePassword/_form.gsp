


<g:if test="${edit}">
    <div class="form-group row">
        <label class="col-sm-4 col-form-label"><g:message code="previous.password"/> *</label>
        <div class="col-sm-8">
            <g:passwordField name="password" class="form-control" value=""/>
            <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter previous Password."/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-4 col-form-label"><g:message code="new.password"/> *</label>
        <div class="col-sm-8">
            <g:passwordField name="password" class="form-control" value=""/>
            <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter new Password."/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-4 col-form-label"><g:message code="confirm.password"/> *</label>
        <div class="col-sm-8">
            <g:passwordField name="password" class="form-control" value=""/>
            <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter confirm Password."/>
        </div>
    </div>
</g:if>