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
public class Razas {
    
    private int iDRaza;
    private String Nom_Raza;
    private int id_Tipo;
  
public Razas(){
}

    public Razas(int iDRaza, String Nom_Raza, int id_Tipo) {
        this.iDRaza = iDRaza;
        this.Nom_Raza = Nom_Raza;
        this.id_Tipo = id_Tipo;
    }

    public int getiDRaza() {
        return iDRaza;
    }

    public void setiDRaza(int iDRaza) {
        this.iDRaza = iDRaza;
    }

    public String getNom_Raza() {
        return Nom_Raza;
    }

    public void setNom_Raza(String Nom_Raza) {
        this.Nom_Raza = Nom_Raza;
    }

    public int getId_Tipo() {
        return id_Tipo;
    }

    public void setId_Tipo(int id_Tipo) {
        this.id_Tipo = id_Tipo;
    }

    
}
