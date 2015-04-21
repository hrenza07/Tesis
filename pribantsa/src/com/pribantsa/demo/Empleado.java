package com.pribantsa.demo;
// Generated 04-10-2015 12:03:01 AM by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Empleado generated by hbm2java
 */
@Entity
@Table(name="empleado"
    ,schema="pribantsa"
)
public class Empleado  implements java.io.Serializable {


     private int idEmpleado;
     private PuestoTrabajo puestoTrabajo;
     private String dui;
     private String isss;
     private String afp;
     private Character sexo;
     private int idDepartamento;
     private String nit;
     private String nombre;
     private String apellido;
     private Date fechaNacimiento;
     private String cuenta;
     private double salario;
     private Set descuentos = new HashSet(0);
     private Set sancions = new HashSet(0);
     private Set telefonos = new HashSet(0);
     private Set reconocimientos = new HashSet(0);
     private Set correos = new HashSet(0);
     private Set puestoHistoricos = new HashSet(0);
     private Set vacacions = new HashSet(0);
     private Set bonos = new HashSet(0);
     private Set educacions = new HashSet(0);
     private Set permisos = new HashSet(0);
     private Set transaccions = new HashSet(0);
     private Set evaluacions = new HashSet(0);
     private Set contratos = new HashSet(0);
     private Set usuarios = new HashSet(0);
     private Set capacitacions = new HashSet(0);
     private Set planillas = new HashSet(0);

    public Empleado() {
    }

	
    public Empleado(int idEmpleado, PuestoTrabajo puestoTrabajo, String dui, String isss, String afp, int idDepartamento, String nit, String nombre, String apellido, Date fechaNacimiento, String cuenta, double salario) {
        this.idEmpleado = idEmpleado;
        this.puestoTrabajo = puestoTrabajo;
        this.dui = dui;
        this.isss = isss;
        this.afp = afp;
        this.idDepartamento = idDepartamento;
        this.nit = nit;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = fechaNacimiento;
        this.cuenta = cuenta;
        this.salario = salario;
    }
    public Empleado(int idEmpleado, PuestoTrabajo puestoTrabajo, String dui, String isss, String afp, Character sexo, int idDepartamento, String nit, String nombre, String apellido, Date fechaNacimiento, String cuenta, double salario, Set descuentos, Set sancions, Set telefonos, Set reconocimientos, Set correos, Set puestoHistoricos, Set vacacions, Set bonos, Set educacions, Set permisos, Set transaccions, Set evaluacions, Set contratos, Set usuarios, Set capacitacions, Set planillas) {
       this.idEmpleado = idEmpleado;
       this.puestoTrabajo = puestoTrabajo;
       this.dui = dui;
       this.isss = isss;
       this.afp = afp;
       this.sexo = sexo;
       this.idDepartamento = idDepartamento;
       this.nit = nit;
       this.nombre = nombre;
       this.apellido = apellido;
       this.fechaNacimiento = fechaNacimiento;
       this.cuenta = cuenta;
       this.salario = salario;
       this.descuentos = descuentos;
       this.sancions = sancions;
       this.telefonos = telefonos;
       this.reconocimientos = reconocimientos;
       this.correos = correos;
       this.puestoHistoricos = puestoHistoricos;
       this.vacacions = vacacions;
       this.bonos = bonos;
       this.educacions = educacions;
       this.permisos = permisos;
       this.transaccions = transaccions;
       this.evaluacions = evaluacions;
       this.contratos = contratos;
       this.usuarios = usuarios;
       this.capacitacions = capacitacions;
       this.planillas = planillas;
    }
   
     @Id 

    
    @Column(name="id_empleado", unique=true, nullable=false)
    public int getIdEmpleado() {
        return this.idEmpleado;
    }
    
    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="id_PuestoTrabajo", nullable=false)
    public PuestoTrabajo getPuestoTrabajo() {
        return this.puestoTrabajo;
    }
    
    public void setPuestoTrabajo(PuestoTrabajo puestoTrabajo) {
        this.puestoTrabajo = puestoTrabajo;
    }

    
    @Column(name="dui", nullable=false)
    public String getDui() {
        return this.dui;
    }
    
    public void setDui(String dui) {
        this.dui = dui;
    }

    
    @Column(name="isss", nullable=false)
    public String getIsss() {
        return this.isss;
    }
    
    public void setIsss(String isss) {
        this.isss = isss;
    }

    
    @Column(name="afp", nullable=false)
    public String getAfp() {
        return this.afp;
    }
    
    public void setAfp(String afp) {
        this.afp = afp;
    }

    
    @Column(name="sexo", length=1)
    public Character getSexo() {
        return this.sexo;
    }
    
    public void setSexo(Character sexo) {
        this.sexo = sexo;
    }

    
    @Column(name="id_departamento", nullable=false)
    public int getIdDepartamento() {
        return this.idDepartamento;
    }
    
    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    
    @Column(name="nit", nullable=false)
    public String getNit() {
        return this.nit;
    }
    
    public void setNit(String nit) {
        this.nit = nit;
    }

    
    @Column(name="nombre", nullable=false)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    @Column(name="apellido", nullable=false)
    public String getApellido() {
        return this.apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="fecha_nacimiento", nullable=false, length=13)
    public Date getFechaNacimiento() {
        return this.fechaNacimiento;
    }
    
    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    
    @Column(name="cuenta", nullable=false)
    public String getCuenta() {
        return this.cuenta;
    }
    
    public void setCuenta(String cuenta) {
        this.cuenta = cuenta;
    }

    
    @Column(name="salario", nullable=false, precision=17, scale=17)
    public double getSalario() {
        return this.salario;
    }
    
    public void setSalario(double salario) {
        this.salario = salario;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getDescuentos() {
        return this.descuentos;
    }
    
    public void setDescuentos(Set descuentos) {
        this.descuentos = descuentos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getSancions() {
        return this.sancions;
    }
    
    public void setSancions(Set sancions) {
        this.sancions = sancions;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getTelefonos() {
        return this.telefonos;
    }
    
    public void setTelefonos(Set telefonos) {
        this.telefonos = telefonos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getReconocimientos() {
        return this.reconocimientos;
    }
    
    public void setReconocimientos(Set reconocimientos) {
        this.reconocimientos = reconocimientos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getCorreos() {
        return this.correos;
    }
    
    public void setCorreos(Set correos) {
        this.correos = correos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getPuestoHistoricos() {
        return this.puestoHistoricos;
    }
    
    public void setPuestoHistoricos(Set puestoHistoricos) {
        this.puestoHistoricos = puestoHistoricos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getVacacions() {
        return this.vacacions;
    }
    
    public void setVacacions(Set vacacions) {
        this.vacacions = vacacions;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getBonos() {
        return this.bonos;
    }
    
    public void setBonos(Set bonos) {
        this.bonos = bonos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getEducacions() {
        return this.educacions;
    }
    
    public void setEducacions(Set educacions) {
        this.educacions = educacions;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getPermisos() {
        return this.permisos;
    }
    
    public void setPermisos(Set permisos) {
        this.permisos = permisos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getTransaccions() {
        return this.transaccions;
    }
    
    public void setTransaccions(Set transaccions) {
        this.transaccions = transaccions;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getEvaluacions() {
        return this.evaluacions;
    }
    
    public void setEvaluacions(Set evaluacions) {
        this.evaluacions = evaluacions;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getContratos() {
        return this.contratos;
    }
    
    public void setContratos(Set contratos) {
        this.contratos = contratos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Set usuarios) {
        this.usuarios = usuarios;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getCapacitacions() {
        return this.capacitacions;
    }
    
    public void setCapacitacions(Set capacitacions) {
        this.capacitacions = capacitacions;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="empleado")
    public Set getPlanillas() {
        return this.planillas;
    }
    
    public void setPlanillas(Set planillas) {
        this.planillas = planillas;
    }




}


