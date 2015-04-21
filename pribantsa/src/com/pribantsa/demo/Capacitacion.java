package com.pribantsa.demo;
// Generated 04-10-2015 12:03:01 AM by Hibernate Tools 3.6.0


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Capacitacion generated by hbm2java
 */
@Entity
@Table(name="capacitacion"
    ,schema="pribantsa"
)
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
   
     @Id 

    
    @Column(name="id_capacitacion", unique=true, nullable=false)
    public int getIdCapacitacion() {
        return this.idCapacitacion;
    }
    
    public void setIdCapacitacion(int idCapacitacion) {
        this.idCapacitacion = idCapacitacion;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idEmpleado", nullable=false)
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    
    @Column(name="nombre", nullable=false)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    @Column(name="descripcion", nullable=false)
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    
    @Column(name="lugar", nullable=false)
    public String getLugar() {
        return this.lugar;
    }
    
    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="fecha_inicio", nullable=false, length=13)
    public Date getFechaInicio() {
        return this.fechaInicio;
    }
    
    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="fecha_fin", nullable=false, length=13)
    public Date getFechaFin() {
        return this.fechaFin;
    }
    
    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }




}


