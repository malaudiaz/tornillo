/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopcart;

/**
 *
 * @author Migue
 */
public class ShopingCart {
    private String userId;
    private String productId;
    private int cantidad;
    private float valor;

    public ShopingCart(String userId, String productId, int cantidad, float valor) {
        this.userId = userId;
        this.productId = productId;
        this.cantidad = cantidad;
        this.valor = valor;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }
    
    
    
}
