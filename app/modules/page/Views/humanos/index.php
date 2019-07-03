<div class="humanos">
    <div class="padding-content">
        <h1 class="titulo">
            <?php echo $this->intrhumanos->contenidos_titulo?>
        </h1>
        <h3 class="subtitulo">
            <?php echo $this->intrhumanos->contenidos_subtitulo?>
        </h3>
        <div class="introduccion">
            <?php echo $this->intrhumanos->contenidos_introduccion?>
        </div>
        <div class="descripcion">
            <?php echo $this->intrhumanos->contenidos_descripcion?>
        </div>
        <div class="facciones">            
            <div class="container">
                <div class="row">
                    <?php foreach ($this->facciones as $key => $faccion) {?>
                        <div class="col-4">
                            <a href="/page/humanos/faccion?faccion=<?php echo $faccion->humano_faccion_id?>">
                                <div class="caja">
                                    <span class="titulo">
                                        <?php echo $faccion->humano_faccion_nombre?>
                                    </span>
                                    <div class="imagen">
                                        <img src="/images/<?php echo $faccion->humano_faccion_imagen?>" alt="">
                                    </div>
                                    <div class="introduccion">
                                        <?php echo $faccion->humano_faccion_introduccion?>
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
