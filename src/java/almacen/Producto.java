/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package almacen;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import sys.checkLogin;

/**
 *
 * @author Miguel David
 */
public class Producto {
    private String id;
    private String title;
    private String descrip;
    private int cantidad;
    private double precio;
    private String image;

    public Producto(String id, String title, String descrip, int cantidad, double precio, String image) {
        this.id = id;
        this.title = title;
        this.descrip = descrip;
        this.cantidad = cantidad;
        this.precio = precio;
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


    public String getDataSave() {
  	return "id:"+this.id+",title:"+this.title+",descrip:"+ this.descrip+",cantidad:"+this.cantidad+",precio:"+this.precio+",image:"+this.image;
    }  
    
    
    public boolean add() {
        boolean res = false;    
        
         File archivo=new File(checkLogin.path + "productos.usr"); 
         
        if (!archivo.exists()) {
        
            try (PrintWriter sal = new PrintWriter(new FileWriter(archivo))) {
                sal.print(this.getDataSave());
                res = true;        
            } catch (IOException ex) {
                System.err.println(ex.getMessage());
            }
            
        }
        return res;
    }
    
    public String valor() throws IOException {
        return this.getDataSave();
    }    
    
    
}
