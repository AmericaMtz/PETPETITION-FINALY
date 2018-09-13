<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Mascota Perdida</title>
        <link rel="shortcut icon" type="image/png" href="../Resourses/Images/logoPP.png"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <LINK REL=StyleSheet HREF="../DocumentosCSS/ERMascota.css" TYPE="text/css" MEDIA=screen>
        <script src="../JavaScript/Registro.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 
        <script >
            var dato;
            function numeros()
            {
                if(event.keyCode < 48 || event.keyCode >57)
                    event.returnValue = false;
            }
        </script>

        
    </head>
    <body>
        
    <center><div class="contenedor">
        <form method="post" action="/RPerdida" enctype="multipart/form-data">
            <p class="titulo"> REGISTRA A TU MASCOTA </p>
            <input type="text" id="nommas" name="nommas" placeholder="Nombre de tu mascota" required>
            <input type="text" id="edadmas" name="edadmas" onkeypress="numeros()" placeholder="Meses de nacido" maxlength="3" required>
            <br><br>

            <%
                ArrayList<Model.Razas> razas = (ArrayList<Model.Razas>) request.getAttribute("razas");
                ArrayList<Model.TiposM> tiposm = (ArrayList<Model.TiposM>) request.getAttribute("tiposm");

            %>
            <select id='tipom' name='tipom' onchange="getRazas(this)">
                <option>Seleccione Mascota</option>
                <%for(Model.TiposM tipo : tiposm) {
                    out.println("<option value='"+tipo.getNom_Tipo()+"' onclick='getRazas(`"+tipo.getId_Tipos()+"`)')>"+tipo.getNom_Tipo()+"</option>");
                }%>
            </select>
            <select id='razas' name='razas'>

            </select>
            <br><br>
            <input id='Hombre' type="radio" name="sexo" value="Macho" required/>Macho
            <input id='Mujer' type="radio" name="sexo" value="Hembra" required/>Hembra
            <br><br>
            Fecha de extravío:
            <input type="date" id="ola" name="fhExtravio" max='2018-05-19' required>
            <br><br>
            <textarea 
                onkeypress="nojaks(this)"
                onfocus =  "return disbaleCopyPaste(elm)"
                autocomplete="off"
                onkeydown = "return interceptKeys(event)"
                name="Descripcion" placeholder="Realiza una breve descripción acerca de tu mascota"  maxlength="50" required></textarea>
            <textarea 
                onkeypress="nojaks(this)"
                onfocus =  "return disbaleCopyPaste(elm)"
                autocomplete="off"
                onkeydown = "return interceptKeys(event)"
                name="Direccion" placeholder="Dirección donde se perdió tu mascota" required></textarea>
            <textarea 
                onkeypress="nojaks(this)"
                onfocus =  "return disbaleCopyPaste(elm)"
                autocomplete="off"
                onkeydown = "return interceptKeys(event)"
                name="Recompensa" id="recompensatxt" placeholder="Recompensa" required></textarea>
            <br>
            <input type="file" accept="image/*" name="data" max=<?php $hoy=date("Y-m-d");echo $hoy;?> required/>
            <p align="right">
                <input type="submit" class="boton" value="Registra" id="botreg" />
            </p>
        </form>
    </div></center>
    <script>
        document.addEventListener("DOMContentLoaded", function(event) {
            Date.prototype.yyyymmdd = function() {
                let mm = this.getMonth() + 1
                let dd = this.getDate()

                return [this.getFullYear(),
                    (mm>9 ? '-' : '-0') + mm,
                    (dd>9 ? '-' : '-0') + dd 
                    ].join('');
            }
            let ola = document.getElementById('ola')
            let fhHoy = new Date()
            ola.max = fhHoy.yyyymmdd()
            console.log(fhHoy)
            console.log(ola.max)
        });
        function getRazas(tipoId) {
            console.log(tipoId.selectedIndex+1)
            let razas = [<%for(Model.Razas raza : razas) {
                                out.println("{id: "+raza.getiDRaza()+", nombre: '"+raza.getNom_Raza()+"', Tipos: '"+raza.getId_Tipo()+"'},");
                            }%>]
            let razasFiltradas = []
            let select = document.getElementById("razas")
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for (i = 0; i < select.options.length; i++) {
                select.remove(i)
            }
            for(let raza of razas) {
                console.log(raza)
                console.log(tipoId.selectedIndex+1)
                if(raza.Tipos == tipoId.selectedIndex) {
                    console.log('YES')
                    razasFiltradas.push(raza)
                    let option = document.createElement("option")
                    option.text = raza.nombre
                    option.value = raza.nombre
                    select.add(option)
                }
            }
            console.log(razasFiltradas)
        }
    </script>
    </body>
</html>
