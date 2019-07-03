<div class="humanos-faccion">
    <div class="padding-content">
        <div class="faccion">
            <h1 class="titulo">
                <?php echo $this->tipo_automata->tipo_automata_nombre?>
            </h1>                   
            <div class="introduccion">
                <?php echo $this->tipo_automata->tipo_automata_introduccion?>
            </div>
            <div class="descripcion">
                <?php echo $this->tipo_automata->tipo_automata_descripcion?>
            </div>
        </div>        
        <div class="humanos">            
            <div class="container">
                <div class="row">
                    <?php foreach ($this->automatas as $key => $automata) {?>
                        <div class="col-4">                            
                                <div class="caja">
                                    <span class="titulo-interna">
                                        <?php echo $automata->automata_nombre?>
                                    </span>                                                                                                         
                                </div>
                            </a>                            
                        </div>                        
                    <?php } ?>
                </div>
            </div>
        </div>        
    </div>
</div>
