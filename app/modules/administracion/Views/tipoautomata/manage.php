<h1 class="titulo-principal"><i class="fas fa-cogs"></i> <?php echo $this->titlesection; ?></h1>
<div class="container-fluid">
	<form class="text-left" enctype="multipart/form-data" method="post" action="<?php echo $this->routeform;?>" data-toggle="validator">
		<div class="content-dashboard">
			<input type="hidden" name="csrf" id="csrf" value="<?php echo $this->csrf ?>">
			<input type="hidden" name="csrf_section" id="csrf_section" value="<?php echo $this->csrf_section ?>">
			<?php if ($this->content->tipo_automata_id) { ?>
				<input type="hidden" name="id" id="id" value="<?= $this->content->tipo_automata_id; ?>" />
			<?php }?>
			<div class="row">
				<div class="col-12 form-group">
					<label for="tipo_automata_nombre"  class="control-label">Nombre</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->tipo_automata_nombre; ?>" name="tipo_automata_nombre" id="tipo_automata_nombre" class="form-control"  required >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 form-group">
					<label for="tipo_automata_introduccion" class="form-label" >Introducci&oacute;n</label>
					<textarea name="tipo_automata_introduccion" id="tipo_automata_introduccion"   class="form-control tinyeditor" rows="10"   ><?= $this->content->tipo_automata_introduccion; ?></textarea>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 form-group">
					<label for="tipo_automata_descripcion" class="form-label" >Descripci&oacute;n</label>
					<textarea name="tipo_automata_descripcion" id="tipo_automata_descripcion"   class="form-control tinyeditor" rows="10"   ><?= $this->content->tipo_automata_descripcion; ?></textarea>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 form-group">
					<label for="tipo_automata_imagen" >Imagen</label>
					<input type="file" name="tipo_automata_imagen" id="tipo_automata_imagen" class="form-control  file-image" data-buttonName="btn-primary" accept="image/gif, image/jpg, image/jpeg, image/png"  >
					<div class="help-block with-errors"></div>
					<?php if($this->content->tipo_automata_imagen) { ?>
						<div id="imagen_tipo_automata_imagen">
							<img src="/images/<?= $this->content->tipo_automata_imagen; ?>"  class="img-thumbnail thumbnail-administrator" />
							<div><button class="btn btn-danger btn-sm" type="button" onclick="eliminarImagen('tipo_automata_imagen','<?php echo $this->route."/deleteimage"; ?>')"><i class="glyphicon glyphicon-remove" ></i> Eliminar Imagen</button></div>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="botones-acciones">
			<button class="btn btn-guardar" type="submit">Guardar</button>
			<a href="<?php echo $this->route; ?>" class="btn btn-cancelar">Cancelar</a>
		</div>
	</form>
</div>