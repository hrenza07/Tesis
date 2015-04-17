/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logicaNegocio;

import encapsulacion.departamento;
import javax.swing.JOptionPane;

/**
 *
 * @author Xino
 */
public class logicaDepartamento {
    
    
    public void agregarEmpleado(departamento dep) {
        
        JOptionPane.showMessageDialog(null,"Guardado con Exito");
       
        }
           
    public void validar(departamento dep) throws exceptionClass {

         if((dep.getNombre().length()<=0) || (dep.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre ");
         }
    
         if((dep.getDescripcion().length()<=0)){ //Validando Descripcion 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre ");
         }
         
         
         
    }

}
