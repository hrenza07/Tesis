/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package encapsulacion;

import java.util.Date;

/**
 *
 * @author byron
 */
public class estudios {
    
    private int idestudios;
    private String institucion;
    private String titulo;
    private Date fecha;
    private String lugar;
    private String nivel;
    private empleado emp;

    public estudios() {
    }

    public int getIdestudios() {
        return idestudios;
    }

    public void setIdestudios(int idestudios) {
        this.idestudios = idestudios;
    }

    public empleado getEmp() {
        return emp;
    }

    public void setEmp(empleado emp) {
        this.emp = emp;
    }
    
 
    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    
}
