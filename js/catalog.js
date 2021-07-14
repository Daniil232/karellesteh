$(document).ready(function() {
	let selectCategory = get('selectCategory');
	let selectMark = get('selectMark');
	let selectModel = get('selectModel');
	let selectCategorypart = get('selectCategorypart');
	if (selectCategory)
		selectCategory = selectCategory.replace(/\+/g, " ");
	if (selectMark)
		selectMark = selectMark.replace(/\+/g, " ");
	if (selectModel)
		selectModel = selectModel.replace(/\+/g, " ");
	if (selectCategorypart)
		selectCategorypart = selectCategorypart.replace(/\+/g, " ");
	$(`#selectCategory :contains(${selectCategory})`).attr("selected", "selected");
	$(`#selectMark :contains(${selectMark})`).attr("selected", "selected");
	$(`#selectModel :contains(${selectModel})`).attr("selected", "selected");
	$(`#selectCategorypart :contains(${selectCategorypart})`).attr("selected", "selected");
	
	$('#records-limit').change(function() {
		$('form').submit();
	});

	$('#selectMark').on('change', function() {
		let markName = $('#selectMark').val();
		$.ajax({
			url: './actions/query.php',
			type: 'POST',
			data: {
				'markName' : markName
			},
			success: function (res) {
				$('#selectModel').html(res);
			},
			error: function (res) {
				console.log(res);
				alert("Ошибка");
			}
		})
   });
})

function get(name){
	if(name=(new RegExp('[?&]'+encodeURIComponent(name)+'=([^&]*)')).exec(location.search))
	   return decodeURIComponent(name[1]);
}
