package Modelo;

public class producto {
    public int idproducto;
    public String codigo;
    public int stock;
    public String estado;

    public producto(int idproducto, String codigo, int stock, String estado) {
        this.idproducto = idproducto;
        this.codigo = codigo;
        this.stock = stock;
        this.estado = estado;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
}
