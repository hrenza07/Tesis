/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package encapsulacion;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 *
 * @author byron
 */
public class departamento {
    
    private int id;
    private String nombre;
    private String descripcion;
    private String tipoObjetivo;
    private List <objetivos> objDepart=null;
    private List <empleado> emp=null;
   
    
    public departamento() {
    }
//este codigo esta de mas
    public departamento(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<objetivos> getObjDepart() {
      return objDepart;
     }
    
    public void setObjDepart(List<objetivos> objDepart) {
     this.objDepart = objDepart;
    }

    public List<empleado> getEmp() {
        return emp;
    }

    public void setEmp(List<empleado> emp) {
        this.emp = emp;
    }  
//este codigo esta de mas
    @Override
    public String toString() {
        return  nombre;
    }
    
    
}
