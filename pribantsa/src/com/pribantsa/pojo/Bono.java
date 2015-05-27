package com.pribantsa.pojo;
// Generated 05-26-2015 11:50:05 PM by Hibernate Tools 3.6.0


import java.util.Date;

/**
 * Bono generated by hbm2java
 */
public class Bono  implements java.io.Serializable {


     private int idBono;
     private Empleado empleado;
     private Date fecha;
     private int idTipoBono;
     private Integer idx;

    public Bono() {
    }

	
    public Bono(int idBono, Empleado empleado, Date fecha, int idTipoBono) {
        this.idBono = idBono;
        this.empleado = empleado;
        this.fecha = fecha;
        this.idTipoBono = idTipoBono;
    }
    public Bono(int idBono, Empleado empleado, Date fecha, int idTipoBono, Integer idx) {
       this.idBono = idBono;
       this.empleado = empleado;
       this.fecha = fecha;
       this.idTipoBono = idTipoBono;
       this.idx = idx;
    }
   
    public int getIdBono() {
        return this.idBono;
    }
    
    public void setIdBono(int idBono) {
        this.idBono = idBono;
    }
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public int getIdTipoBono() {
        return this.idTipoBono;
    }
    
    public void setIdTipoBono(int idTipoBono) {
        this.idTipoBono = idTipoBono;
    }
    public Integer getIdx() {
        return this.idx;
    }
    
    public void setIdx(Integer idx) {
        this.idx = idx;
    }




}


