<cfprocessingdirective pageencoding="utf-8">
<!-- HEADER PÁGINA-->
<cfinclude template="header.cfm">

<cfset o_projeto = new cfc.Projeto() />
<cfset id_u = url.id />
<cfset projeto = o_projeto.get_by_id(id_u) />

<!-- ACTION FORM -->
<cfif isdefined ("form.salvar") >
	
	<cfset update_projeto = o_projeto.salvar(form.id,form.mecanismo,form.nome,form.numero,form.data_inicio,form.data_fim) />

	<cflocation url="./lista.cfm" addtoken=false>

<cfelseif isdefined ("form.voltar") >

	<cflocation url="./lista.cfm" addtoken=false>

</cfif>

<cfoutput>
	<body>
		<div id="wrapper">
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Form Projeto</h5>
								<div class="ibox-tools tooltip-demo">
								</div>
							</div>       
							<div class="ibox-content">
								
								<!-- FORM DE PROJETO -->
								<form class="form-horizontal" method="post" id="form" action="">
									<input type="hidden" id="id" name="id" class="form-control" value="#id#"> 
									<div class="form-group">
										<label class="col-sm-2 control-label">Mecanismo</label>
										<div class="col-sm-10">
											<input type="text" id="mecanismo" name="mecanismo" class="form-control"  style="text-transform:uppercase;" value="#projeto.mecanismo#" required> 
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Nome</label>
										<div class="col-sm-10">
											<input type="text" id="nome" name="nome" class="form-control"  style="text-transform:uppercase;" value="#projeto.nome#" required> 
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Número</label>
										<div class="col-sm-3">
											<input type="text" id="numero" name="numero" class="form-control"  style="text-transform:uppercase;" value="#projeto.numero#" required> 
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Data Início</label>
										<div class="col-sm-3">
											<input type="text" id="data_inicio" name="data_inicio" class="form-control"  style="text-transform:uppercase;" value="#dateTimeFormat(createDate(Left(projeto.dt_inicio,4),Mid(projeto.dt_inicio,5,2),Right(projeto.dt_inicio,2)), "dd/mm/yyyy")#" required> 
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Data Fim</label>
										<div class="col-sm-3">
											<input type="text" id="data_fim" name="data_fim" class="form-control"  style="text-transform:uppercase;" value="#dateTimeFormat(createDate(Left(projeto.dt_fim,4),Mid(projeto.dt_fim,5,2),Right(projeto.dt_fim,2)), "dd/mm/yyyy")#" required> 
										</div>
									</div>
									<div class="hr-line-dashed"></div>
									<div class="form-group">
										<div class="col-sm-4 col-sm-offset-2">
											<span class="" id="cancelar">
												<button class="btn btn-white" type="submit" name="voltar">Cancelar</button>
											</span>
											<span class="" id="salvar">
												<button class="btn btn-primary" type="submit" name="salvar">Salvar</button>
											</span>
										</div>
									</div>
								</form>
								<!-- FIM FORM DE PROJETO-->

							</div>							
						</div>
					</div>
				</div>
			</div>

			<!-- FOOTER PÁGINA -->
			<cfinclude template="footer.cfm">

</cfoutput>

<!-- Page-Level Scripts -->
<script>
	
</script>

