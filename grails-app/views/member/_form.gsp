

<div class="form-group row">
    <label class="col-sm-4 col-form-label"><g:message code="first.name"/> *</label>
<div class="col-sm-8">
    <g:textField name="firstName" class="form-control" value="${member?.firstName}" />
    <UIHelper:renderErrorMessage fieldName="firstName" model="${member}" errorMessage="please.enter.first.name"/>
</div>
</div>

<div class="form-group row">
    <label class="col-sm-4 col-form-label"><g:message code="last.name"/></label>
<div class="col-sm-8">
    <g:textField name="lastName" class="form-control" value="${member?.lastName}"/>
</div>
</div>

<div class="form-group row">
    <label class="col-sm-4 col-form-label"><g:message code="address"/>*</label>
<div class="col-sm-8">
    <g:textField name="address" class="form-control" value="${member?.address}"/>
</div>
</div>
<div class="form-group row">
    <label class="col-sm-4 col-form-label"><g:message code="phone"/>*</label>
<div class="col-sm-8">
    <g:textField name="phone" class="form-control" value="${member?.phone}"/>
</div>
</div>
<div class="form-group row">
    <label class="col-sm-4 col-form-label"><g:message code="email"/> *</label>
<div class="col-sm-8">
    <g:field type="email" name="email" class="form-control" value="${member?.email}"/>
    <UIHelper:renderErrorMessage fieldName="email" model="${member}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
</div>
</div>
<div class="form-group row">
    <label class="col-sm-4 col-form-label"><g:message code="birthdate"/>*</label>
<div class="col-sm-8">
    <g:field type="Date" name="birthdate" class="form-control" value="${member?.birthdate}"/>
</div>
</div>

<g:if test="${!edit}">
    <div class="form-group row">
        <label class="col-sm-4 col-form-label"><g:message code="password"/> *</label>
    <div class="col-sm-8">
        <g:passwordField name="password" class="form-control" value="${member?.password}"/>
        <UIHelper:renderErrorMessage fieldName="password" model="${member}" errorMessage="Please Enter a Password."/>
    </div>
    </div>
</g:if>