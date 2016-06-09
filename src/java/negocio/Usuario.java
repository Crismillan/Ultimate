package negocio;

import accesodato.Coneccion;

public class Usuario {
    private int usuario_id;
    private String usuario;
    private String clave;
    private String fecha;
    private String Estado;
    
    
    
    Coneccion con;
    public Usuario() {
    con=new Coneccion();
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public Coneccion getCon() {
        return con;
    }

    public void setCon(Coneccion con) {
        this.con = con;
    }
      
    
    public void GuardarUsuario(){
   
       con.setInsertar("insert into usuarios(usuario,clave,fecha,estado) values('"+this.getUsuario()+"','"+this.getClave()+"','"+this.getFecha()+"','activo')");
     
    }
    
    public void BorrarUsuario(){
    con.setConsulta("update usuarios  set estado='pasivo' where usuario_id='"+this.getUsuario_id() +"'");
    
    }
    
    public void ActualizarUsuario(){
     
     con.setInsertar("UPDATE usuarios SET usuario= '"+this.getUsuario()+"',clave= '"+this.getClave()+"',fecha= '"+this.getFecha()+"',estado= 'activo' where usuario_id='"+this.getUsuario_id() +"'");
 
    }
    
}