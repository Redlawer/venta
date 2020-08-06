package Modelo;

public class venta {
    public int idventa;
    public int numero;
    public int total;
    public String estado;
    public int idcliente;
    public String fecha;

    public venta(int idventa, int numero, int total, String estado, int idcliente, String fecha) {
        this.idventa = idventa;
        this.numero = numero;
        this.total = total;
        this.estado = estado;
        this.idcliente = idcliente;
        this.fecha = fecha;
    }

    public int getIdventa() {
        return idventa;
    }

    public void setIdventa(int idventa) {
        this.idventa = idventa;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
}
