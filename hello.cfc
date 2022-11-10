<cfcomponent rest="true" restPath="api" produces="application/json">
    <cffunction
        name="sayHello" restPath="/hello"
        access="remote"
        returntype="any"
        httpMethod="GET"
        produces="application/json">

        <cfset rest = ["teste1", "teste3"]>
        <cfset arrayAppend(rest, "teste5")>

    <cfreturn serializeJSON(rest)>
    
    </cffunction>
</cfcomponent>
