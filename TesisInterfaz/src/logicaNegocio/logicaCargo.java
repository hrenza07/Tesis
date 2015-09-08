/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logicaNegocio;

import capaDatos.puestoTrabajoDAO;
import encapsulacion.cargo;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Xino
 */
public class logicaCargo {
    
    puestoTrabajoDAO datos=new puestoTrabajoDAO();
    
    public void agregarDepartamento(cargo c) {
        datos.guardarCargo(c);
    }
    
    public Set<cargo> consultar(){
        Set <cargo> c=new HashSet<cargo>(datos.obtenerCargos());
        return c;   
    }
    
     public cargo buscar(int ids){
    
        cargo depar=null;
        depar=datos.buscarCargo(ids);
        return depar;
    
    }
    
    
    public void validar(cargo c) throws exceptionClass {
            
         if((c.getNombre().length()<=0) || (!c.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre");
         }
         if(c.getDescripcion().trim().length()<=0){ //Validando Descripcion 
            throw new exceptionClass("Datos Incorrectos","Descipcion del Cargo");
         }    
    }
}
