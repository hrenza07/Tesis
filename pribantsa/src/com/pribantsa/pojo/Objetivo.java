package com.pribantsa.pojo;
// Generated 05-26-2015 11:50:05 PM by Hibernate Tools 3.6.0



/**
 * Objetivo generated by hbm2java
 */
public class Objetivo  implements java.io.Serializable {


     private int idObjetivo;
     private PuestoTrabajo puestoTrabajo;
     private String descripcion;
     private boolean alcance;

    public Objetivo() {
    }

    public Objetivo(int idObjetivo, PuestoTrabajo puestoTrabajo, String descripcion, boolean alcance) {
       this.idObjetivo = idObjetivo;
       this.puestoTrabajo = puestoTrabajo;
       this.descripcion = descripcion;
       this.alcance = alcance;
    }
   
    public int getIdObjetivo() {
        return this.idObjetivo;
    }
    
    public void setIdObjetivo(int idObjetivo) {
        this.idObjetivo = idObjetivo;
    }
    public PuestoTrabajo getPuestoTrabajo() {
        return this.puestoTrabajo;
    }
    
    public void setPuestoTrabajo(PuestoTrabajo puestoTrabajo) {
        this.puestoTrabajo = puestoTrabajo;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public boolean isAlcance() {
        return this.alcance;
    }
    
    public void setAlcance(boolean alcance) {
        this.alcance = alcance;
    }




}


