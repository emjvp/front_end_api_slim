<div class="container">
    <div class="row">
    <form action="/page/editarhotel/editar" method="put" >
                <div class="col-9">
                    <?php
                        
                        if($this->response_hoteles != "No existen registros" ){
                    ?>
                        <table>
                            <tr>
                                <th>
                                    indicador
                                </th>
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
                                                <td>
                                                    <input type="radio" name="id" value="<?php echo $value?>">                                                                                       
                                                </td>
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
    
        <input type="" name="nombre" placeholder="Nombre Hotel">
        <input type="" name="ciudad" placeholder="Ciudad">
        <input type="number" name="cant_hab" placeholder="Cantidad de Habitaciones">
        <input type="" name="nit" placeholder="Nit Hotel">
        <input type="" name="direccion" placeholder="Direccion">
        <input type="" name="nit" placeholder="Nit Hotel">
        <input type="submit">
    </form>
    <a href="/">Atrás</a>
</div>