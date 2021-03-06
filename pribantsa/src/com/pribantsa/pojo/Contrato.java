package com.pribantsa.pojo;
// Generated 05-26-2015 11:50:05 PM by Hibernate Tools 3.6.0


import java.util.Date;

/**
 * Contrato generated by hbm2java
 */
public class Contrato  implements java.io.Serializable {


     private int idContrato;
     private Empleado empleado;
     private int idTipoContrato;
     private Date fechaInicio;
     private Date fechaFin;
     private String descripcion;

    public Contrato() {
    }

	
    public Contrato(int idContrato, Empleado empleado, int idTipoContrato, Date fechaInicio, Date fechaFin) {
        this.idContrato = idContrato;
        this.empleado = empleado;
        this.idTipoContrato = idTipoContrato;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
    }
    public Contrato(int idContrato, Empleado empleado, int idTipoContrato, Date fechaInicio, Date fechaFin, String descripcion) {
       this.idContrato = idContrato;
       this.empleado = empleado;
       this.idTipoContrato = idTipoContrato;
       this.fechaInicio = fechaInicio;
       this.fechaFin = fechaFin;
       this.descripcion = descripcion;
    }
   
    public int getIdContrato() {
        return this.idContrato;
    }
    
    public void setIdContrato(int idContrato) {
        this.idContrato = idContrato;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public int getIdTipoContrato() {
        return this.idTipoContrato;
    }
    
    public void setIdTipoContrato(int idTipoContrato) {
        this.idTipoContrato = idTipoContrato;
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
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }




}


