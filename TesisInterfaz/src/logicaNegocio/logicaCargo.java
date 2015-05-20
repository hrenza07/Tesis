/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logicaNegocio;

import encapsulacion.cargo;

/**
 *
 * @author Xino
 */
public class logicaCargo {
    
    public void validar(cargo c) throws exceptionClass {
            
         if((c.getNombre().length()<=0) || (!c.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre");
         }
         if(c.getDescripcion().trim().length()<=0){ //Validando Descripcion 
            throw new exceptionClass("Datos Incorrectos","Descipcion del Cargo");
         }         
    }
}
