<#import "/spring.ftl" as spring>
<#import "partials/main.ftlh" as main>
<@main.renderWith>
    <section id="page-splash" class="page-splash mt-5">
        <div class="d-flex justify-content-center">
            <div class="mx-3">
                <h3 style="text-transform: capitalize"><@spring.message "register.btn"/></h3>
                <form id="registration-form" method="post">
                    <#if _csrf??>
                        <input type="hidden" name="${(_csrf.parameterName)!'csrf'}"
                               value="${(_csrf.token)!'--no-token--'}"/>
                    </#if>
                    <input type="email" name="email" class="form-control mb-1" value="${form.email!''}"
                           placeholder="Email"><br>
                    <input type="text" name="login" class="form-control mb-1" value="${form.login!''}"
                           placeholder="Login"><br>
                    <input type="password" name="password" class="form-control mb-1" value="${form.password!''}"
                           placeholder="Password"><br>
                    <button class="btn btn-outline-primary btn-block" type="submit"><@spring.message "register.btn"/></button>
                    <br>
                    <#if errors?? >
                        <#list errors as fieldError>
                            <p class="text-danger"><@spring.message "${fieldError.codes[0]}"/></p>
                        </#list>
                    </#if>
                    <#if user?? >
                        <p>${user.login} - ${user.email} already exists!</p>
                    </#if>
                </form>
            </div>
        </div>
    </section>
</@main.renderWith>
