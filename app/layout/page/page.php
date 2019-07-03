<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title><?= $this->_titlepage ?></title>
	<link rel="stylesheet" type="text/css" href="/scripts/carousel/carousel.css">
	<link rel="stylesheet" href="/components/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="/skins/page/css/global.css">
	<link rel="stylesheet" href="/skins/page/css/estiloseditor.css">
	<link rel="shortcut icon" href="/favicon.ico">
	<script type="text/javascript" id="www-widgetapi-script" src="https://s.ytimg.com/yts/jsbin/www-widgetapi-vflS50iB-/www-widgetapi.js" async=""></script>
	<script src="https://www.youtube.com/player_api"></script>
</head>
<body>
	<header>
		<?= $this->_data['header']; ?>
	</header>
	<div><?= $this->_content ?></div>
	<footer>
		<?= $this->_data['footer']; ?>
	</footer>
	
	<script src="/components/jquery/dist/jquery.min.js"></script>
	<script src="/scripts/popper.min.js"></script>
	<script src="/components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/scripts/carousel/carousel.js"></script>
	<script src="/skins/page/js/main.js"></script>

 	<link rel="stylesheet" href="/components/bootstrap-fileinput/css/fileinput.css">
	<script src="/components/bootstrap-fileinput/js/fileinput.min.js"></script>
	<div class="modal fade" id="modaleditor" tabindex="-1" role="dialog" aria-labelledby="modaleditorLabel" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content"></div>
		</div>
	</div>
	<script>
	$('.ls-modal').on('click', function(e){
		e.preventDefault();
		$('#modaleditor').modal('show').find('.modal-content').load($(this).attr('href'));
	});
</script>
</body>
</html>