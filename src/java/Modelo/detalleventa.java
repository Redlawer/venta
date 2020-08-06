package Modelo;

public class detalleventa {
    public int iddetalle_venta;
    public int idventa;
    public int idproducto;
    public Double precioventa;
    public int cantidad;

    public detalleventa(int iddetalle_venta, int idventa, int idproducto, Double precioventa, int cantidad) {
        this.iddetalle_venta = iddetalle_venta;
        this.idventa = idventa;
        this.idproducto = idproducto;
        this.precioventa = precioventa;
        this.cantidad = cantidad;
    }

    public int getIddetalle_venta() {
        return iddetalle_venta;
    }

    public void setIddetalle_venta(int iddetalle_venta) {
        this.iddetalle_venta = iddetalle_venta;
    }

    public int getIdventa() {
        return idventa;
    }

    public void setIdventa(int idventa) {
        this.idventa = idventa;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }

    public Double getPrecioventa() {
        return precioventa;
    }

    public void setPrecioventa(Double precioventa) {
        this.precioventa = precioventa;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
            
}
