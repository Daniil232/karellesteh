$(document).ready(function() {
	function get(name){
		if(name=(new RegExp('[?&]'+encodeURIComponent(name)+'=([^&]*)')).exec(location.search))
		   return decodeURIComponent(name[1]);
	}

	let selectCategory = get('selectCategory');
	let selectMark = get('selectMark');
	let selectModel = get('selectModel');
	let selectCategorypart = get('selectCategorypart');
	if (selectMark == 'John+Deere')
		selectMark = "John Deere";
	$(`#selectCategory :contains(${selectCategory})`).attr("selected", "selected");
	$(`#selectMark :contains(${selectMark})`).attr("selected", "selected");
	$(`#selectModel :contains(${selectModel})`).attr("selected", "selected");
	$(`#selectCategorypart :contains(${selectCategorypart})`).attr("selected", "selected");
		
	$('#selectMark').on('load change', function() {
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

