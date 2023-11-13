/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package almacen;

import java.util.ArrayList;

/**
 *
 * @author Miguel David
 */
public class Almacen {
    private ArrayList<Producto> arr;
    
    public Almacen() {
        arr = new ArrayList<>();
        arr.add(new Producto("1","Tornillo de 4 pulgadas", "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.", 20, 0.80, "t1.jfif"));
        arr.add(new Producto("2","Tornillo cabeza cuadrada", "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.", 30, 1.35, "t2.jfif"));
        arr.add(new Producto("3","Tornillo de rosca chapa", "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.", 40, 1.45, "t3.jfif"));

        arr.add(new Producto("4","Tornillo de 8 pulgadas", "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.", 20, 0.75, "t1.jfif"));
        arr.add(new Producto("5","Tornillo cabeza Redonda", "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.", 30, 1.80, "t2.jfif"));
        arr.add(new Producto("6","Tornillo de rosca Estria", "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.", 40, 1.75, "t3.jfif"));

    }
    
    
    public void add(Producto p) {
        arr.add(p);
    }
    
    public void del(Producto p) {
        arr.remove(p);
    }

    public ArrayList list() {
        return arr;
    }
    
}
