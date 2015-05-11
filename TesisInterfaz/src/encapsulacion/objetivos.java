/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package encapsulacion;

/**
 *
 * @author Xino
 */
public class objetivos {
    
    private int id;
    private String tipo;
    private String objDescripcion;
    private departamento dep;

    public objetivos() {
    }

    public departamento getDep() {
        return dep;
    }

    public void setDep(departamento dep) {
        this.dep = dep;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getObjDescripcion() {
        return objDescripcion;
    }

    public void setObjDescripcion(String objDescripcion) {
        this.objDescripcion = objDescripcion;
    }
    
}
