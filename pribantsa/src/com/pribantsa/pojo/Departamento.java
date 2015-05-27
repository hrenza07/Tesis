package com.pribantsa.pojo;
// Generated 05-26-2015 11:50:05 PM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;
import java.util.ArrayList;
import java.util.List;

/**
 * Departamento generated by hbm2java
 */
public class Departamento  implements java.io.Serializable {


     private int idDepartamento;
     private String nombre;
     private String descripcion;
     //private Set objdepartamentos = new HashSet(0);
     private List <Objdepartamento> objDepart=null;

    public Departamento() {
    }

	
    public Departamento(int idDepartamento, String nombre, String descripcion) {
        this.idDepartamento = idDepartamento;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }
    public Departamento(int idDepartamento, String nombre, String descripcion, Set objdepartamentos) {
       this.idDepartamento = idDepartamento;
       this.nombre = nombre;
       this.descripcion = descripcion;
       //this.objdepartamentos = objdepartamentos;
    }
   
    public int getIdDepartamento() {
        return this.idDepartamento;
    }
    
    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    /*public Set getObjdepartamentos() {
        return this.objdepartamentos;
    }
    
    public void setObjdepartamentos(Set objdepartamentos) {
        this.objdepartamentos = objdepartamentos;
    }*/
    
     public List<Objdepartamento> getObjDepart() {
      return objDepart;
     }
    
    public void setObjDepart(List<Objdepartamento> objDepart) {
     this.objDepart = objDepart;
    }




}

