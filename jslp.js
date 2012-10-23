jQuery(function() {
	
	buildLandingPage2('Půjčka pro studenty', 'Provident poskytuje půjčku pro studenty za stejně férových a srozumitelných podmínek, jako pro všechny ostatní klienty.');
	
	function buildLandingPage2(title, short_text) {
		jQuery(".container.col1").css('padding', "0px");
		jQuery(".container.col1").css('width', "auto");
		jQuery(".container.col1 .content").css('-moz-column-count', "2");
		jQuery(".container.col1 .content").css('-moz-column-gap', "20px");
		jQuery(".container.col1 .content").css('-webkit-column-count', "2");
		jQuery(".container.col1 .content").css('-webkit-column-gap', "20px");
		jQuery(".container.col1 .content").css('column-count', "2");
		jQuery(".container.col1 .content").css('column-gap', "20px");
		jQuery(".container.col1 .content").css('padding', "10px");
		jQuery(".container.col1 .content").css('font-size', "13px");
		jQuery(".container.col1 .content").css('line-height', "18px");
		jQuery(".container.col1 h2").css('padding', "15px 0 30px 10px");
		jQuery("#header .shadow").hide();
		jQuery("#secondary-navigation").hide();
		jQuery("#search-box").hide();
		jQuery(".breadcrumb").hide();
	
		(new Image()).src = "http://providentonline.cz/provident-remote-img/mam-zajem-over.png";
		
		var markup = ' \
		<div style="width:910px;height:565px;position:relative;background:url(http://providentonline.cz/provident-remote-img/pebble.png) no-repeat;margin:0 auto;border-bottom:1px solid #e5e5e5;"> \
			<div style="position:absolute;top:0;right:0;width:625px;height:465px;"> \
				<div style="margin:50px 0 15px 0;font-size:56px;color:white;text-align:center;"> \
					Rychlá<br>Půjčka Provident \
				</div> \
				<div style="font-size:24px;color:#f6b3d7;text-align:center;"> \
					Půjčíme Vám od 4 000 do 50 000 Kč! \
				</div> \
				<a href="https://www.provident.cz/pages/online-zadost-o-pujcku" style="margin:0 auto;" class="landing-page-wantit"><img src="http://providentonline.cz/provident-remote-img/mam-zajem.png" width="260" height="62" /></a> \
				<div style="position:relative;background:#f6b3d7;margin:30px auto  0;padding: 10px;color:#af005d;font-size:16px;line-height:22px;width: 300px;text-align:center;"> \
					<span style="display:block;" class="landing-page-arrow"></span> \
					Na základě vyplněného formuláře<br>získáte nezávaznou nabídku \
				</div>\
			</div> \
			<div style="font-size:16px;color:#333333;text-align:center;line-height:20px;position:absolute;bottom:40px;left:0;right:0;"> \
				V životě každého z nás nastane chvíle, kdy potřebuje rychle půjčit peníze. Rozbitá pračka, porucha auta, <br>renovace koupelny - je jedno na co peníze potřebujete, Provident je tady pro vás. \
			</div> \
			\
		</div>\
		<div style="padding: 40px 0;width:910px;position:relative;background:url(http://providentonline.cz/provident-remote-img/penize.png) right no-repeat;margin:0 auto;color:#333333;font-size:14px;font-weight:bold;" class="landing-page-bullet-points">\
			<ul>\
				<li>půjčka je na cokoliv</li>\
				<li>peníze v hotovosti nebo na účet</li>\
				<li>půjčka je s přehlednou smlouvou</li>\
				<li>půjčka je bez skrytých poplatků</li>\
			</ul><ul>\
				<li>půjčit si lze 4000 až 50000 Kč</li>\
				<li>půjčka je bez ručitele</li>\
				<li>půjčujeme na celém území ČR</li>\
				<li>půjčka je rychlá</li>\
			</ul>\
			<br style="clear:both;"> \
		</div>\
		';
		
		jQuery("#page").prepend(markup);
		jQuery(".landing-page-wantit").hover(
		  function () {
		    jQuery(this).find("img").attr("src", "http://providentonline.cz/provident-remote-img/mam-zajem-over.png")
		  }, 
		  function () {
			jQuery(this).find("img").attr("src", "http://providentonline.cz/provident-remote-img/mam-zajem.png")
		  }
		);
		jQuery(".landing-page-arrow").css({
			"width": 0,
			"height": 0,
			"position": "absolute",
			"top": "-15px",
			"left": "140px",
			"border-left": "15px solid transparent",
			"border-right": "15px solid transparent",
			"border-bottom": "15px solid #f6b3d7"
		});
		jQuery(".landing-page-bullet-points ul").css({
			"float": "left",
			"margin": "0 60px 0 0"
		});
		jQuery(".landing-page-bullet-points ul li").css({
			"padding": "15px 0 15px 40px",
			"background": "url(http://providentonline.cz/provident-remote-img/tick1.png) 0 10px no-repeat"
		});
		jQuery(".landing-page-wantit").css({
			"display": "block"
		});
		jQuery(".landing-page-wantit img").css({
			"display": "block",
			"margin": "30px auto 0"
		});
	}
});