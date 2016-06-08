package negocio;

import accesodato.Coneccion;

public class Tipos {
    private int tipo_id;
    private String nombre;
    private String estado;
    private String Habilidad;
    Coneccion con;
    public Tipos(){
        con=new Coneccion();
    }

    public int getTipo_id() {
        return tipo_id;
    }

    public void setTipo_id(int tipo_id) {
        this.tipo_id = tipo_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getHabilidad() {
        return Habilidad;
    }

    public void setHabilidad(String Habilidad) {
        this.Habilidad = Habilidad;
    }

    public Coneccion getCon() {
        return con;
    }

    public void setCon(Coneccion con) {
        this.con = con;
    }
    
    
}
