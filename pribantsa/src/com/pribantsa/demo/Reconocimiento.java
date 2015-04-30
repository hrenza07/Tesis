package com.pribantsa.demo;
// Generated 04-10-2015 12:03:01 AM by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Reconocimiento generated by hbm2java
 */
@Entity
@Table(name="reconocimiento"
    ,schema="pribantsa"
)
public class Reconocimiento  implements java.io.Serializable {


     private int idReconocimiento;
     private Empleado empleado;
     private String descripcion;

    public Reconocimiento() {
    }

    public Reconocimiento(int idReconocimiento, Empleado empleado, String descripcion) {
       this.idReconocimiento = idReconocimiento;
       this.empleado = empleado;
       this.descripcion = descripcion;
    }
   
     @Id 

    
    @Column(name="id_reconocimiento", unique=true, nullable=false)
    public int getIdReconocimiento() {
        return this.idReconocimiento;
    }
    
    public void setIdReconocimiento(int idReconocimiento) {
        this.idReconocimiento = idReconocimiento;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idEmpleado", nullable=false)
    public Empleado getEmpleado() {
        return this.empleado;
    }
    
    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    
    @Column(name="descripcion", nullable=false)
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }




}

