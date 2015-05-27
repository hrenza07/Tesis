package com.pribantsa.pojo;
// Generated 05-26-2015 11:50:05 PM by Hibernate Tools 3.6.0


import java.util.Date;

/**
 * Capacitacion generated by hbm2java
 */
public class Capacitacion  implements java.io.Serializable {


     private int idCapacitacion;
     private Empleado empleado;
     private String nombre;
     private String descripcion;
     private String lugar;
     private Date fechaInicio;
     private Date fechaFin;

    public Capacitacion() {
    }

    public Capacitacion(int idCapacitacion, Empleado empleado, String nombre, String descripcion, String lugar, Date fechaInicio, Date fechaFin) {
       this.idCapacitacion = idCapacitacion;
       this.empleado = empleado;
       this.nombre = nombre;
       this.descripcion = descripcion;
       this.lugar = lugar;
       this.fechaInicio = fechaInicio;
       this.fechaFin = fechaFin;
    }
   
    public int getIdCapacitacion() {
        return this.idCapacitacion;
    }
    
    public void setIdCapacitacion(int idCapacitacion) {
        this.idCapacitacion = idCapacitacion;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
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
    public String getLugar() {
        return this.lugar;
    }
    
    public void setLugar(String lugar) {
        this.lugar = lugar;
    }
    public Date getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }
    public Date getFechaFin() {
        return this.fechaFin;
    }
    
    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }




}

