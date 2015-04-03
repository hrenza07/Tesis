/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package encapsulacion;

import java.util.Date;

/**
 *
 * @author byron
 */
public class empleado {
    
    private String nombre;
    private String apellido;
    private String dui;
    private String nit;
    private String afp;
    private String isss;
    private double numCuenta;
    private Date fechanaciemiento;
    private int edad;
    private String direccion;
    //genero
    //estado civil
    

    public String getAfp() {
        return afp;
    }

    public void setAfp(String afp) {
        this.afp = afp;
    }

    public String getIsss() {
        return isss;
    }

    public void setIsss(String isss) {
        this.isss = isss;
    }
   
    public double getNumCuenta() {
        return numCuenta;
    }

    public void setNumCuenta(double numCuenta) {
        this.numCuenta = numCuenta;
    }

    public Date getFechanaciemiento() {
        return fechanaciemiento;
    }

    public void setFechanaciemiento(Date fechanaciemiento) {
        this.fechanaciemiento = fechanaciemiento;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }           

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }
    
    
}
