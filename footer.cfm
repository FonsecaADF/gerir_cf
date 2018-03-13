			<div class="footer">
				<div>
					<strong>Copyright</strong> Gerir &copy; 2016-2018
				</div>
			</div>
		</div>
	</body>
</html>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="js/plugins/jeditable/jquery.jeditable.js"></script>
<!-- Data Tables -->
<script src="js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
<script src="js/plugins/dataTables/dataTables.responsive.js"></script>
<script src="js/plugins/dataTables/dataTables.tableTools.min.js"></script>
<script src="js/sorting-date.js"></script>	

<!-- Page-Level Scripts -->
<script>
	$(document).ready(function() {

		$('.dataTables-example').dataTable({
			dom: 'Bfrtip', 
			buttons: [ 'copy', 'csv', 'excel', 'pdf', 'print' ],
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"tableTools": {
				"sSwfPath": "js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
			}
		});
	});
</script>

