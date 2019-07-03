<div class="humanos-faccion">
    <div class="padding-content">
        <div class="faccion">
            <h1 class="titulo">
                <?php echo $this->faccion->humano_faccion_nombre?>
            </h1>                   
            <div class="descripcion">
                <?php echo $this->faccion->humano_faccion_descipcion?>
            </div>
        </div>        
        <div class="humanos">            
            <div class="container">
                <div class="row">
                    <?php foreach ($this->humanos as $key => $humano) {?>
                        <div class="col-4">                            
                                <div class="caja">
                                    <span class="titulo-interna">
                                        <?php echo $humano->humano_nombre?>
                                    </span>                                
                                    <div class="descripcion-interna">
                                        <?php echo $humano->humano_descipcion?>
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
