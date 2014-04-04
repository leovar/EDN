/**
 *
 * Zoomimage
 * Author: Stefan Petre www.eyecon.ro
 * 
 */
(function ($) {
	var EYE = window.EYE = function() {
		var _registered = {
			init: []
		};
		return {
			init: function() {
				$.each(_registered.init, function(nr, fn){
					fn.call();
				});
			},
			extend: function(prop) {
				for (var i in prop) {
					if (prop[i] != undefined) {
						this[i] = prop[i];
					}
				}
			},
			register: function(fn, type) {
				_registered[type].push(fn);
			}
		};
	}();
	$(EYE.init);
})(jQuery);




 (function ($) {
    var initLayout = function () {
        var hash = window.location.hash.replace('#', '');
        var currentTab = $('ul.navigationTabs a')
									.bind('click', showTab)
									.filter('a[rel=' + hash + ']');
        if (currentTab.size() == 0) {
            currentTab = $('ul.navigationTabs a:first');
        }
        showTab.apply(currentTab.get(0));

        $('#txtColor').ColorPicker({
            onSubmit: function (hsb, hex, rgb, el) {
                $(el).val(hex);
                $(el).ColorPickerHide();
            },
            onBeforeShow: function () {
                $(this).ColorPickerSetColor(this.value);
            }
        })
				.bind('keyup', function () {
				    $(this).ColorPickerSetColor(this.value);
				});
    };

    var showTab = function (e) {
        var tabIndex = $('ul.navigationTabs a')
									.removeClass('active')
									.index(this);
        $(this)
					.addClass('active')
					.blur();
        $('div.tab')
					.hide()
						.eq(tabIndex)
						.show();
    };
    EYE.register(initLayout, 'init');
})(jQuery)
