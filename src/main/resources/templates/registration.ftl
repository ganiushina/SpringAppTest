<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    Add new user

    ${message!"No message."}
    <#--<#assign message="Jerry">-->
    ${message!"No message."}

    <#--${message}-->
    <@l.login "/registration" />
</@c.page>