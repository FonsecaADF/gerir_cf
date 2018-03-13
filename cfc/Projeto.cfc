<cfcomponent>

  <cffunction name="get_all" access="public" returntype="query">
    <cfargument name="id_assinante" type="numeric" required="true">

    <cfquery name="q_projeto" datasource="gerir">
      select
        id_projeto,
        numero,
        nome,
        dt_inicio,
        dt_fim
      from
        projeto
      Where fl_status = 'A'
        and id_assinante = <cfqueryparam value="#arguments.id_assinante#" cfsqltype="cf_sql_integer" />
    </cfquery>    

    <cfreturn q_projeto >
  </cffunction>

  <cffunction name="get_by_id" access="public" returntype="query">
    <cfargument name="id_projeto" type="numeric" required="true">

    <cfquery name="q_projeto" datasource="gerir">
      select
        mecanismo,
        nome,
        numero,
        dt_inicio,
        dt_fim
      from
        projeto
      Where fl_status = 'A'
        and id_projeto = <cfqueryparam value="#arguments.id_projeto#" cfsqltype="cf_sql_integer" />
    </cfquery>    

    <cfreturn q_projeto >
  </cffunction>

  <cffunction name="salvar" access="public" returntype="query">
    <cfargument name="id_projeto" type="numeric" required="true">
    <cfargument name="mecanismo" type="string" required="true">
    <cfargument name="nome" type="string" required="true">
    <cfargument name="numero" type="string" required="true">
    <cfargument name="dt_inicio" type="string" required="true">
    <cfargument name="dt_fim" type="string" required="true">

    <cfset inicio = "#Right(arguments.dt_inicio,4)#" & "#Mid(arguments.dt_inicio,4,2)#" & "#Left(arguments.dt_inicio,2)#" />
    <cfset fim = "#Right(arguments.dt_fim,4)#" & "#Mid(arguments.dt_fim,4,2)#" & "#Left(arguments.dt_fim,2)#" />
    
    <cfquery name="q_projeto" datasource="gerir">
      update
        projeto
      set
        mecanismo = <cfqueryparam value="#arguments.mecanismo#" cfsqltype="cf_sql_varchar" />,
        nome = <cfqueryparam value="#arguments.nome#" cfsqltype="cf_sql_varchar" />,
        numero = <cfqueryparam value="#arguments.numero#" cfsqltype="cf_sql_varchar" />,
        dt_inicio = <cfqueryparam value="#inicio#" cfsqltype="cf_sql_numeric" />,
        dt_fim = <cfqueryparam value="#fim#" cfsqltype="cf_sql_numeric" />
      Where id_projeto = <cfqueryparam value="#arguments.id_projeto#" cfsqltype="cf_sql_integer" />
    </cfquery>    

    <cfreturn q_projeto >
  </cffunction>

</cfcomponent>