$(function() {init();

    var actionContainer = $(".sc-content");

    window.addEventListener('message', function(event) {
        var item = event.data;

        if (item.showmenu) {
            ResetMenu()
            actionContainer.show();
        }

        if (item.hidemenu) {
            actionContainer.hide();
        }
    });
})

function ResetMenu() {
    $("div").each(function(i, obj) {
        var element = $(this);

        if (element.attr("data-parent")) {
            element.hide();
        } else {
            element.show();
        }
    });
}

function init() {
    $(".menuoption").each(function(i, obj) {

        if ($(this).attr("data-action")) {
            $(this).click(function() {
                var data = $(this).data("action");
                sendData("ButtonClick", data);
            })
        }

        if ($(this).attr("data-sub")) {
            var menu = $(this).data("sub");
            var element = $("#" + menu);

            $(this).click(function() {
                element.show();
                $(this).parent().hide();
            })

            var backBtn = $('<button/>', { text: 'Voltar' });

            backBtn.click(function() {
                element.hide();
                $("#" + element.data("parent")).show();
            });

            element.append(backBtn);
        }
    });
}

function sendData(name, data) {
	$.post("http://must_arma/" + name, JSON.stringify(data), function(datab) {
	  if (datab != "ok") {
		console.log(datab);
	  }
	});
  }
  

$(document).on('keyup', function (e) {
	if (e.which == 27) {
		$(".sc-content").css("display", "none")
		fetch(`https://must_arma/closeNUI`, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json; charset=UTF-8',
			},
			body: JSON.stringify({
				close: true
			})
		})
	}
});