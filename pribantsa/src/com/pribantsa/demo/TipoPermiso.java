package com.pribantsa.demo;
// Generated 04-10-2015 12:03:01 AM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TipoPermiso generated by hbm2java
 */
@Entity
@Table(name="tipo_permiso"
    ,schema="pribantsa"
)
public class TipoPermiso  implements java.io.Serializable {


     private int idTipoPermiso;
     private String descripcion;
     private Set permisos = new HashSet(0);

    public TipoPermiso() {
    }

	
    public TipoPermiso(int idTipoPermiso, String descripcion) {
        this.idTipoPermiso = idTipoPermiso;
        this.descripcion = descripcion;
    }
    public TipoPermiso(int idTipoPermiso, String descripcion, Set permisos) {
       this.idTipoPermiso = idTipoPermiso;
       this.descripcion = descripcion;
       this.permisos = permisos;
    }
   
     @Id 

    
    @Column(name="id_tipo_permiso", unique=true, nullable=false)
    public int getIdTipoPermiso() {
        return this.idTipoPermiso;
    }
    
    public void setIdTipoPermiso(int idTipoPermiso) {
        this.idTipoPermiso = idTipoPermiso;
    }

    
    @Column(name="descripcion", nullable=false)
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="tipoPermiso")
    public Set getPermisos() {
        return this.permisos;
    }
    
    public void setPermisos(Set permisos) {
        this.permisos = permisos;
    }




}

