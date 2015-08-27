/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package encapsulacion;

import java.util.List;

/**
 *
 * @author Xino
 */
public class cargo {
    
    private int id;
    private String nombre;
    private String Descripcion;
    private double salMin;
    private double salMax;
    private List<funcionesCargo> funciones=null;
    private List<empleado> emple=null;
    
    public cargo() {
    }
//esta de mas
    public cargo(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    } 

    public double getSalMin() {
        return salMin;
    }

    public void setSalMin(double salMin) {
        this.salMin = salMin;
    }

    public double getSalMax() {
        return salMax;
    }

    public void setSalMax(double salMax) {
        this.salMax = salMax;
    } 

    public List<funcionesCargo> getFunciones() {
        return funciones;
    }

    public void setFunciones(List<funcionesCargo> funciones) {
        this.funciones = funciones;
    }

    public List<empleado> getEmple() {
        return emple;
    }

    public void setEmple(List<empleado> emple) {
        this.emple = emple;
    }
//esta de mas
    @Override
    public String toString() {
        return nombre;
    }
    
    
    

}
