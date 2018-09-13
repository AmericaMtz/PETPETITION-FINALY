package Model;

public class MascotaBus {
    private int idMascota;
    private String nombre;
    private String descripcion;
    private String recompensa;
    private int edad;
    private String sexo;
    private String dueño;
    private String raza;
    private String tipo;
    private String direccion;
    private String fhExtravio;
    private String img;
    private String correo;
    private String numero;
    private String nombrePersona;
    private String apellidoPersona;


    public MascotaBus(String nombreMascota, String descripcion, String recompensa, int edad, String sexo, String dueño, String raza, String tipo, String direccion, String fhExtravio, String img, String correo, String numero, String nombrePersona, String apellidoPersona) {
        this.nombre = nombreMascota;
        this.descripcion = descripcion;
        this.recompensa = recompensa;
        this.edad = edad;
        this.sexo = sexo;
        this.dueño = dueño;
        this.raza = raza;
        this.tipo = tipo;
        this.direccion = direccion;
        this.fhExtravio = fhExtravio;
        this.img = img;
        this.correo = correo;
        this.numero = numero;
        this.nombrePersona = nombrePersona;
        this.apellidoPersona = apellidoPersona;
    }

    public int getIdMascota() {
        return idMascota;
    }

    public void setIdMascota(int idMascota) {
        this.idMascota = idMascota;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreMascota) {
        this.nombre = nombreMascota;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getRecompensa() {
        return recompensa;
    }

    public void setRecompensa(String recompensa) {
        this.recompensa = recompensa;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getDueño() {
        return dueño;
    }

    public void setDueño(String dueño) {
        this.dueño = dueño;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFhExtravio() {
        return fhExtravio;
    }

    public void setFhExtravio(String fhExtravio) {
        this.fhExtravio = fhExtravio;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getNombrePersona() {
        return nombrePersona;
    }

    public void setNombrePersona(String nombrePersona) {
        this.nombrePersona = nombrePersona;
    }

    public String getApellidoPersona() {
        return apellidoPersona;
    }

    public void setApellidoPersona(String apellidoPersona) {
        this.apellidoPersona = apellidoPersona;
    }
}