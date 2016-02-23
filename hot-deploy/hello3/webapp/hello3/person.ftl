<#if persons?has_content>
Some of the famous celebrities who have visited our site:
<u1>
    <#list persons as person>
	<li> ${person.firstName?if_exists} ${person.lastName?if_exists}
   </#list>
</u1>
</#if>
