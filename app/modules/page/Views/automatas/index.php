<div class="humanos">
    <div class="padding-content">
        <h1 class="titulo">
            <?php echo $this->intrautomatas->contenidos_titulo?>
        </h1>
        <h3 class="subtitulo">
            <?php echo $this->intrautomatas->contenidos_subtitulo?>
        </h3>
        <div class="introduccion">
            <?php echo $this->intrautomatas->contenidos_introduccion?>
        </div>
        <div class="descripcion">
            <?php echo $this->intrautomatas->contenidos_descripcion?>
        </div>
        <div class="facciones">            
            <div class="container">
                <div class="row">
                    <?php foreach ($this->tipoautomatas as $key => $tipo) {?>
                        <div class="col-4">
                            <a href="/page/automatas/tipo?tipo=<?php echo $tipo->tipo_automata_id?>">
                                <div class="caja">
                                    <span class="titulo">
                                        <?php echo $tipo->tipo_automata_nombre?>
                                    </span>
                                    <div class="imagen">
                                        <img src="/images/<?php echo $tipo->tipo_automata_imagen?>" alt="">
                                    </div>
                                    <div class="introduccion">
                                        <?php echo $tipo->tipo_automata_introduccion?>
                                    </div>
                                    <div class="descripcion">
                                        <?php echo $tipo->tipo_automata_descripcion?>
                                    </div>
                                </div>
                            </a>                            
                        </div>                        
                    <?php } ?>
                </div>
            </div>
        </div>        
    </div>
</div>