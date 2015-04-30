/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package encapsulacion;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author byron
 */
public class empleado {
    
    private int id;
    private String nombre;
    private String apellido;
    private String dui;
    private String nit;
    private String afp;
    private String isss;
    private String numCuenta;
    private int edad;
    private String direccion;
    private List <estudios> estudios=null;
    private List <experienciaLaboral> exp=null;
    private char Genero;
    private String estCivil;
    private String cargo;
    private String departamento;
    private double salario;

    public empleado() {  //contructor por defecto que utiliza Hibernate
    }                        

    public int getId() {  //Mapeo atravez del id
        return id;
    }

    public void setId(int id) { //Mapeo atravez del id
        this.id = id;
    }
    
    public String getNumCuenta() {
        return numCuenta;
    }

    public void setNumCuenta(String numCuenta) {
        this.numCuenta = numCuenta;
    }
    

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }
    

    public List<experienciaLaboral> getExp() {
        return exp;
    }

    public void setExp(List<experienciaLaboral> exp) {
        this.exp = exp;
    }
    
    public List<estudios> getEstudios() {
        return estudios;
    }

    public void setEstudios(List<estudios> estudios) {
        this.estudios = estudios;
    }

    public char getGenero() {
        return Genero;
    }

    public void setGenero(char Genero) {
        this.Genero = Genero;
    }

    public String getEstCivil() {
        return estCivil;
    }

    public void setEstCivil(String estCivil) {
        this.estCivil = estCivil;
    }
    

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
