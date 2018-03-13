<cfprocessingdirective pageencoding="utf-8">
<cfinclude template="header.cfm">
<cfset o_projeto = new cfc.Projeto() />
<cfset assinante = 17 />
<cfset q_lista = o_projeto.get_all(assinante) />

<cfoutput>
	<body>
		<div id="wrapper">
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>Lista de Projetos</h5>
								<div class="ibox-tools tooltip-demo">
									<a href="##" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="left" title="Cadastre novo Projeto.">Novo</a>
								</div>
							</div>       
							<div class="ibox-content">
								<div class="panel blank-panel">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover dataTables-example">
												<thead>
													<tr>
														<th>Projeto</th>
														<th>Numero</th>
														<th>Descrição</th>
														<th>Início</th>
														<th>Fim</th>
														<th>Ação</th>
													</tr>
												</thead>
												<tbody>
													<!-- LOOP QUERY -->												
													<cfloop query="q_lista"> 
														<tr>
															<td class="gradeA">#q_lista.id_projeto#</td>
															<td class="gradeA">#q_lista.numero#</td>
															<td class="gradeA">#q_lista.nome#</td>
															<td class="gradeA">#dateTimeFormat(createDate(Left(q_lista.dt_inicio,4),Mid(q_lista.dt_inicio,5,2),Right(q_lista.dt_inicio,2)), "dd/mm/yyyy")#</td>
															<td class="gradeA">#dateTimeFormat(createDate(Left(q_lista.dt_fim,4),Mid(q_lista.dt_fim,5,2),Right(q_lista.dt_fim,2)), "dd/mm/yyyy")#</td>
															<td class="gradeA">
																<a href="javascript:;" id="editar" title="Alterar" onclick="func_alterar(#q_lista.id_projeto#)">
					 												<i class="fa fa-edit text-navy"></i>
																</a>
															</td>
														</tr>
													</cfloop>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>							
						</div>
					</div>
				</div>
			</div>
			<cfinclude template="footer.cfm">
</cfoutput>

<!-- Page-Level Scripts -->
<script>
	
	function func_alterar(vid){
		var url = './form.cfm?id='+vid;
		window.location.href = url;
	}

</script>

