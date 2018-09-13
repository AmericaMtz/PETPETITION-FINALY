

package Model;

public class Mascota {
    private String NombreMasc;
    private String TipoResgist;
    private int Edad;
    private String Descripcion;
    private String NomColonia;
    private String NomDelegacion;
    private String Imagen;
    private String Dueño;
    private String NombreRaza;
    private String NomTipo;
    private String NickName;
    private String NomPerso;
    private String ApeMat;
    private String ApePat;
    private String Correo;
    private String Tel;
    
    public Mascota() {
    }

    public Mascota(String NombreMasc, String TipoResgist, int Edad, String Descripcion, String NomColonia, String NomDelegacion, String Imagen, String Dueño, String NombreRaza, String NomTipo, String NickName, String NomPerso, String ApeMat, String ApePat, String Correo, String Tel) {
        this.NombreMasc = NombreMasc;
        this.TipoResgist = TipoResgist;
        this.Edad = Edad;
        this.Descripcion = Descripcion;
        this.NomColonia = NomColonia;
        this.NomDelegacion = NomDelegacion;
        this.Imagen = Imagen;
        this.Dueño = Dueño;
        this.NombreRaza = NombreRaza;
        this.NomTipo = NomTipo;
        this.NickName = NickName;
        this.NomPerso = NomPerso;
        this.ApeMat = ApeMat;
        this.ApePat = ApePat;
        this.Correo = Correo;
        this.Tel = Tel;
    }

    public Mascota(String string, String string0, int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String getNombreMasc() {
        return NombreMasc;
    }

    public void setNombreMasc(String NombreMasc) {
        this.NombreMasc = NombreMasc;
    }

    public String getTipoResgist() {
        return TipoResgist;
    }

    public void setTipoResgist(String TipoResgist) {
        this.TipoResgist = TipoResgist;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getNomColonia() {
        return NomColonia;
    }

    public void setNomColonia(String NomColonia) {
        this.NomColonia = NomColonia;
    }

    public String getNomDelegacion() {
        return NomDelegacion;
    }

    public void setNomDelegacion(String NomDelegacion) {
        this.NomDelegacion = NomDelegacion;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public String getDueño() {
        return Dueño;
    }

    public void setDueño(String Dueño) {
        this.Dueño = Dueño;
    }

    public String getNombreRaza() {
        return NombreRaza;
    }

    public void setNombreRaza(String NombreRaza) {
        this.NombreRaza = NombreRaza;
    }

    public String getNomTipo() {
        return NomTipo;
    }

    public void setNomTipo(String NomTipo) {
        this.NomTipo = NomTipo;
    }

    public String getNickName() {
        return NickName;
    }

    public void setNickName(String NickName) {
        this.NickName = NickName;
    }

    public String getNomPerso() {
        return NomPerso;
    }

    public void setNomPerso(String NomPerso) {
        this.NomPerso = NomPerso;
    }

    public String getApeMat() {
        return ApeMat;
    }

    public void setApeMat(String ApeMat) {
        this.ApeMat = ApeMat;
    }

    public String getApePat() {
        return ApePat;
    }

    public void setApePat(String ApePat) {
        this.ApePat = ApePat;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getTel() {
        return Tel;
    }

    public void setTel(String Tel) {
        this.Tel = Tel;
    }

    
}
