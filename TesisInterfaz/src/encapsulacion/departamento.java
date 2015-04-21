/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package encapsulacion;

import java.util.ArrayList;

/**
 *
 * @author byron
 */
public class departamento {
    
    private String nombre;
    private String jefe;
    private String descripcion;
    private String tipoObjetivo;
    private ArrayList <objetivos> objDepart=new ArrayList<>();
    
    public String getTipoObjetivo() {
        return tipoObjetivo;
    }

    public void setTipoObjetivo(String tipoObjetivo) {
        this.tipoObjetivo = tipoObjetivo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getJefe() {
        return jefe;
    }

    public void setJefe(String jefe) {
        this.jefe = jefe;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public ArrayList<objetivos> getObjDepart() {
        return objDepart;
    }

    public void setObjDepart(ArrayList<objetivos> objDepart) {
        this.objDepart = objDepart;
    }
    
    
}
