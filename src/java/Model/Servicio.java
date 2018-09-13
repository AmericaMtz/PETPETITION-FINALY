package Model;

public class Servicio {
    private String NomColonia;
    private String NomDelegacion;
    private String NickName;
    private String NomPerso;
    private String ApeMat;
    private String ApePat;
    private String Correo;
    private String Tel;
    private String Propietario;
    private String NomServicio;
    private String DescServicio;
    private String Paseo;
    private String Estetica;
    private String Veterinaria;
    private String DescPaseo;
    private String DescEstetica;
    private String DescVeterinaria;
    
    public Servicio(){

}

    public Servicio(String propietario, String nomServicio, String descServicio, String paseo, String estetica, String veterinaria, String descPaseo, String descEstetica, String descVeterinaria, String nickName, String nomPerso, String apeMat, String apePat, String correo, String tel) {
        Propietario = propietario;
        NomServicio = nomServicio;
        DescServicio = descServicio;
        Paseo = paseo;
        Estetica = estetica;
        Veterinaria = veterinaria;
        DescPaseo = descPaseo;
        DescEstetica = descEstetica;
        DescVeterinaria = descVeterinaria;
            NickName = nickName;
        NomPerso = nomPerso;
        ApeMat = apeMat;
        ApePat = apePat;
        Correo = correo;
        Tel = tel;
    }
        
    
     public Servicio(String string, String string0, int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

    public String getPropietario() {
        return Propietario;
    }

    public void setPropietario(String Propietario) {
        this.Propietario = Propietario;
    }

    public String getNomServicio() {
        return NomServicio;
    }

    public void setNomServicio(String NomServicio) {
        this.NomServicio = NomServicio;
    }

    public String getDescServicio() {
        return DescServicio;
    }

    public void setDescServicio(String DescServicio) {
        this.DescServicio = DescServicio;
    }

    public String getPaseo() {
        return Paseo;
    }

    public void setPaseo(String Paseo) {
        this.Paseo = Paseo;
    }

    public String getEstetica() {
        return Estetica;
    }

    public void setEstetica(String Estetica) {
        this.Estetica = Estetica;
    }

    public String getVeterinaria() {
        return Veterinaria;
    }

    public void setVeterinaria(String Veterinaria) {
        this.Veterinaria = Veterinaria;
    }

    public String getDescPaseo() {
        return DescPaseo;
    }

    public void setDescPaseo(String DescPaseo) {
        this.DescPaseo = DescPaseo;
    }

    public String getDescEstetica() {
        return DescEstetica;
    }

    public void setDescEstetica(String DescEstetica) {
        this.DescEstetica = DescEstetica;
    }

    public String getDescVeterinaria() {
        return DescVeterinaria;
    }

    public void setDescVeterinaria(String DescVeterinaria) {
        this.DescVeterinaria = DescVeterinaria;
    }
    
}
