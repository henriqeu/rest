<cfcomponent rest="true" restPath="locales" produces="application/json">
<cffunction
        name="getListLocalese" restPath="/list"
        access="remote"
        returntype="any"
        httpMethod="GET"
        produces="application/json">

<cfquery
    datasource="db" 
    name="getListLocales"
    >
    SELECT * from locales 
</cfquery>

<cfset
     result = "teste String">  
<cfreturn 
    serializeJSON(getListLocales)> 
</cffunction>

<!------------------------------------------------------------------------------------->
<cffunction


 name="postLocales" restPath="/addLocale"
        access="remote"
        returntype="any"
        httpMethod="POST"
        >    

<cfoutput>
<cfset params= "Parametros a serem inseridos">
<cfreturn #params#>
</cfoutput>



</cffunction>
<!------------------------------------------------------------------------------------>

<cffunction
 name="getAndar" restPath="/andares"
        access="remote"
        returntype="any"
        httpMethod="GET"
        produces="application/json">

<cfquery
    datasource="db" 
    name="getAndares"
    >
    SELECT andar from locales 
</cfquery>       
<cfreturn 
    serializeJSON(getAndares)> 
</cffunction>

<!--- --->

</cfcomponent>


