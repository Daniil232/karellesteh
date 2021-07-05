$(document).ready(function() {
	var input = document.querySelector("#tel");
	input.addEventListener("input", mask, false);
	input.focus();
	setCursorPosition(3, input);
	$("#btn_send_mess").on('click',function() {
		let name = $('#name').val();
		let email = $('#email').val();
		let tel = $('#tel').val();
		let mess = $('#mess').val();
		$.ajax({
			type: "POST",
			url: "actions/contact.php",
			data: {
				'name': name,
				'email': email,
				'tel': tel,
				'mess': mess
			},
			success: function(msg) {
				if(msg == 'OK') {
					result = '<p>Ваш заказ принят</p>';
					$('.fields').hide();
					$('.note').hide();
					$('.success').html(result);
				} else {
					$('.note').show();
					result = msg;
				}
				$('.note').html(result);
			}
			});
		return false;
	});
})

function setCursorPosition(pos, e) {
	e.focus();
	if (e.setSelectionRange) e.setSelectionRange(pos, pos);
	else if (e.createTextRange) {
	  var range = e.createTextRange();
	  range.collapse(true);
	  range.moveEnd("character", pos);
	  range.moveStart("character", pos);
	  range.select()
	}
  }

function mask(e) {
//console.log('mask',e);
var matrix = this.placeholder,// .defaultValue
	i = 0,
	def = matrix.replace(/\D/g, ""),
	val = this.value.replace(/\D/g, "");
def.length >= val.length && (val = def);
matrix = matrix.replace(/[_\d]/g, function(a) {
	return val.charAt(i++) || "_"
});
this.value = matrix;
i = matrix.lastIndexOf(val.substr(-1));
i < matrix.length && matrix != this.placeholder ? i++ : i = matrix.indexOf("_");
setCursorPosition(i, this)
}

