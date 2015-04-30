/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package encapsulacion;

/**
 *
 * @author byron
 */
public class experienciaLaboral {
    
    private int id;
    private String lugar;
    private String tiempo;
    private String cargo;
    private empleado emp;
    
    public experienciaLaboral() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public empleado getEmp() {
        return emp;
    }

    public void setEmp(empleado emp) {
        this.emp = emp;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
    
    
    
}
