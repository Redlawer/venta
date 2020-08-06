package Modelo;

public class accesos {
    public int idacceso;
    public int orden;
    public String nombre;
    public String url;
    public String estado;

    public accesos(int idacceso, int orden, String nombre, String url, String estado) {
        this.idacceso = idacceso;
        this.orden = orden;
        this.nombre = nombre;
        this.url = url;
        this.estado = estado;
    }

    public int getIdacceso() {
        return idacceso;
    }

    public void setIdacceso(int idacceso) {
        this.idacceso = idacceso;
    }

    public int getOrden() {
        return orden;
    }

    public void setOrden(int orden) {
        this.orden = orden;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
}
