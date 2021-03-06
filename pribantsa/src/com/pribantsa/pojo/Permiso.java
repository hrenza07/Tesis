package com.pribantsa.pojo;
// Generated 05-26-2015 11:50:05 PM by Hibernate Tools 3.6.0


import java.util.Date;

/**
 * Permiso generated by hbm2java
 */
public class Permiso  implements java.io.Serializable {


     private int idPermiso;
     private Empleado empleado;
     private boolean remunerado;
     private Date inicio;
     private Date fin;
     private int idTipoPermiso;
     private String descripcion;
     private Integer idx;

    public Permiso() {
    }

	
    public Permiso(int idPermiso, Empleado empleado, boolean remunerado, Date inicio, Date fin, int idTipoPermiso) {
        this.idPermiso = idPermiso;
        this.empleado = empleado;
        this.remunerado = remunerado;
        this.inicio = inicio;
        this.fin = fin;
        this.idTipoPermiso = idTipoPermiso;
    }
    public Permiso(int idPermiso, Empleado empleado, boolean remunerado, Date inicio, Date fin, int idTipoPermiso, String descripcion, Integer idx) {
       this.idPermiso = idPermiso;
       this.empleado = empleado;
       this.remunerado = remunerado;
       this.inicio = inicio;
       this.fin = fin;
       this.idTipoPermiso = idTipoPermiso;
       this.descripcion = descripcion;
       this.idx = idx;
    }
   
    public int getIdPermiso() {
        return this.idPermiso;
    }
    
    public void setIdPermiso(int idPermiso) {
        this.idPermiso = idPermiso;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public boolean isRemunerado() {
        return this.remunerado;
    }
    
    public void setRemunerado(boolean remunerado) {
        this.remunerado = remunerado;
    }
    public Date getInicio() {
        return this.inicio;
    }
    
    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }
    public Date getFin() {
        return this.fin;
    }
    
    public void setFin(Date fin) {
        this.fin = fin;
    }
    public int getIdTipoPermiso() {
        return this.idTipoPermiso;
    }
    
    public void setIdTipoPermiso(int idTipoPermiso) {
        this.idTipoPermiso = idTipoPermiso;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Integer getIdx() {
        return this.idx;
    }
    
    public void setIdx(Integer idx) {
        this.idx = idx;
    }




}


