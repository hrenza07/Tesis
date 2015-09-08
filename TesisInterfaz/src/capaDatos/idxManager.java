/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import encapsulacion.empleado;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Xino
 */
public class idxManager {
    
    private int idN;
    
    public int idxNext(){
    
        empleadoDAO em=new empleadoDAO();
        List<empleado> empleados=em.obtenerEmpleados();
        List s1=new ArrayList();
         s1.add(null);
        empleados.removeAll(s1);
        if(empleados.size()==0){
        idN=0;
        }else{
        idN=empleados.size();
        }
        return idN;
    }
    
}
