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
    
    
    public void agregarEmpleado(departamento emp) {
        
        JOptionPane.showMessageDialog(null,"Guardado con Exito");
       
        }
           
    public void validar(departamento emp) throws exceptionClass {

         if((emp.getNombre().length()<=0) || (!emp.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre ");
         }
    
    }

}
