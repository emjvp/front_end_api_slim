<div class="container">
    <div class="row">
    <div class="col-9">
                    <?php
                        
                        if($this->response_hoteles != "No existen registros" ){
                    ?>
                        <table>
                            <tr>
                                
                                <th>
                                    Hotel
                                </th>
                                <th>
                                    Ciudad
                                </th>
                                <th>
                                    Habitaciones
                                </th>
                                <th>
                                    Direccion
                                </th>
                                <th>
                                    Nit
                                </th>
                                </tr>
                                    <?php                                    
                                        
                                        foreach ($this->response_hoteles as $key => $hotel) {
                                    ?>
                                    <tr>
                                    <?php foreach ($hotel as $key => $value) {
                                                if($key == "id_hote"){?>
                                                
                                                <?php

                                                }else{
                                                    echo "<td>".$value."</td>";
                                                }
                                            }
                                        ?>                                    
                                    </tr> 
                                    <?php 
                                        }
                                    ?>         
                                                          
                        </table>                    
                    <?php
                        }else{
                            echo $this->response_hoteles;
                        }
                    ?>
            </div>
            <div class="col-3">
    <ul>
        <li>
            <span class="button"><a href="/page/crearhabitacion">Crear</a></span>
        </li>
        <li>
            <span class="button"><a href="/page/editarhabitacion">Editar</a></span>
        </li>
        <li>
            <span class="button"><a href="/page/eliminarhabitacion">Eliminar</a></span>
        </li>
        <li>
            <span class="button"><a href="/page/hoteles">Hoteles</a></span>
        </li>
    </ul>
                        
    </div>
    
    </div>
</div>
                
    