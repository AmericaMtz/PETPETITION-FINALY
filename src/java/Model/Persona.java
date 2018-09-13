/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**     
 *
 * @author Alumno
 */
public class Persona {
    
    private int Id_Persona;
    private String Nick;
    private String NomPer;
    private String ApePat;
    private String ApeMat;
    private String Clave;
    private String Correo;
    private String NumT;
    private int IdCol;
    private int IdDele;

    public Persona(int Id_Persona, String Nick, String NomPer, String ApePat, String ApeMat, String Clave, String Correo, String NumT, int IdCol, int IdDele) {
        this.Id_Persona = Id_Persona;
        this.Nick = Nick;
        this.NomPer = NomPer;
        this.ApePat = ApePat;
        this.ApeMat = ApeMat;
        this.Clave = Clave;
        this.Correo = Correo;
        this.NumT = NumT;
        this.IdCol = IdCol;
        this.IdDele = IdDele;
    }

   

    public int getId_Persona() {
        return Id_Persona;
    }

    public void setId_Persona(int Id_Persona) {
        this.Id_Persona = Id_Persona;
    }

    public String getNick() {
        return Nick;
    }

    public void setNick(String Nick) {
        this.Nick = Nick;
    }

    public String getNomPer() {
        return NomPer;
    }

    public void setNomPer(String NomPer) {
        this.NomPer = NomPer;
    }

    public String getApePat() {
        return ApePat;
    }

    public void setApePat(String ApePat) {
        this.ApePat = ApePat;
    }

    public String getApeMat() {
        return ApeMat;
    }

    public void setApeMat(String ApeMat) {
        this.ApeMat = ApeMat;
    }

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getNumT() {
        return NumT;
    }

    public void setNumT(String NumT) {
        this.NumT = NumT;
    }

    public int getIdCol() {
        return IdCol;
    }

    public void setIdCol(int IdCol) {
        this.IdCol = IdCol;
    }

    public int getIdDele() {
        return IdDele;
    }

    public void setIdDele(int IdDele) {
        this.IdDele = IdDele;
    }
    
    
}
