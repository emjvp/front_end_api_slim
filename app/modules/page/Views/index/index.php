<div class="container">
    <h1 class="titulo-principal">Bienvenidos a la aplicacion de HOTELES HT DE COLOMBIA</h1>
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
            <span class="button"><a href="/page/crearhotel">Crear</a></span>
        </li>
        <li>
            <span class="button"><a href="/page/editarhotel">Editar</a></span>
        </li>
        <li>
            <span class="button"><a href="/page/eliminarhotel">Eliminar</a></span>
        </li>
        <li>
            <span class="button"><a href="/page/habitaciones">Habitaciones</a></span>
        </li>
    </ul>
                        
    </div>
        </div>
</div>