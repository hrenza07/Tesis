/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package logicaNegocio;

import encapsulacion.empleado;
import javax.swing.JOptionPane;

/**
 *
 * @author byron
 */
public class logicaEmpleados {
    
    //boolean ok=false;
    boolean okis=false;
    empleado emp=new empleado();
 
    public void agregarEmpleado(empleado emp) {
        
        JOptionPane.showMessageDialog(null,"Guardado con Exito");
       
        }
           
   
    

    public void validar(empleado emp) throws exceptionClass {
    
    if(emp.getNombre().length()<=0){ 
        throw new exceptionClass("Datos Incompletos","Campo Nombre");
            }
     
    if(emp.getNombre().matches("([a-z]|[A-Z]//s)+")){
            throw new exceptionClass("Datos Incompletos","Campo Nombre");
        }
    
    if(emp.getApellido().length()<=0){
           throw new exceptionClass("Datos Incompletos","Campo Apellido");
         
        }
    
    if(emp.getNombre().matches("([a-z]|[A-Z]//s)+")){
            throw new exceptionClass("Datos Incompletos","Campo Apellido");
         }
    
    if((emp.getDui().trim().length()<=1)){
            throw new exceptionClass("Datos Incompletos","Campo DUI");
        
    }
        
    }
    
   /* private void validarEmpleado(empleado emp) {
        
        String dui;
        dui=emp.getDui();
        
        if(emp.getNombre().length()<=0){
           JOptionPane.showMessageDialog(null,"Datos Incompletos: Campo Nombre");
           return;
        }
        
        if(emp.getNombre().matches("([a-z]|[A-Z]//s)+")){
            JOptionPane.showMessageDialog(null,"Datos Incorrectos: Campo Nombre");
            return;
        }
        
         if(emp.getApellido().length()<=0){
           JOptionPane.showMessageDialog(null,"Datos Incompletos: Campo Apellido");
           return;
        }
        
        if(emp.getApellido().matches("([a-z]|[A-Z]//s)+")){
            JOptionPane.showMessageDialog(null,"Datos Incorrectos: Campo Apellido");
            return;
        }
       
       if((emp.getDui().trim().length()<=1)){
            JOptionPane.showMessageDialog(null,"Datos Incorrectos: Campo DUI");
            return;
        }
       
       if((emp.getDui().trim().length()<=1)){
            JOptionPane.showMessageDialog(null,"Datos Incorrectos: Campo DUI");
            return;
        }
        ok=true;
         //To change body of generated methods, choose Tools | Templates.
    }*/
    
   
}
