package Modelo;

public class usuario {
    public int idusuario;
    public String usuario;
    public String clave;

    public usuario(int idusuario, String usuario, String clave) {
        this.idusuario = idusuario;
        this.usuario = usuario;
        this.clave = clave;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
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
    
}
