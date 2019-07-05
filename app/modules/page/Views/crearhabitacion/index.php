<form action="/page/crearhotel/crear" method="post" >
    <input type="number" name="cant_hab" placeholder="Cantidad de Habitaciones" required>
    <select name="tipo">
        <option value="null" selected disabled>Tipo Habitacion</option> 
        <option value="Estadar">Estandar</option> 
        <option value="Junior">Junior</option>
        <option value="Suite">Suite</option>
    </select>
    <select name="acomodacion">
        <option value="null" selected disabled>Acomodacion</option>        
        <option value="Sencilla">Sencilla</option> 
        <option value="Doble">Doble</option>
        <option value="Triple">Triple</option>
        <option value="Cuadruple">Cuadruple</option>
    </select>
    
    <select name="hotel">
        <option value="null" disabled>Hotel</option>
        <?php
            foreach ($this->hoteles_asociados as $key => $hoteles) {
                foreach($hoteles as $key => $hotel)
                ?>
                
                <option value="<?php echo $hotel["id_hote"]; ?>"><?php echo $hotel["nombre_hote"]; ?></option>
            <?php }
        ?>        
    </select>
    <input type="submit">
</form>

   

<a href="/">Atrás</a>