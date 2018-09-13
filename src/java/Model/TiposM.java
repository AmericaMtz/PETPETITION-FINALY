/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author America Esmeralda
 */
public class TiposM {
    private int id_Tipos;
    private String Nom_Tipo;

public TiposM(){
}

    public TiposM(int id_Tipos, String Nom_Tipo) {
        this.id_Tipos = id_Tipos;
        this.Nom_Tipo = Nom_Tipo;
    }

    public int getId_Tipos() {
        return id_Tipos;
    }

    public void setId_Tipos(int id_Tipos) {
        this.id_Tipos = id_Tipos;
    }

    public String getNom_Tipo() {
        return Nom_Tipo;
    }

    public void setNom_Tipo(String Nom_Tipo) {
        this.Nom_Tipo = Nom_Tipo;
    }
    
}
