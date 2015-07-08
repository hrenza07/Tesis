/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package logicaNegocio;

import capaDatos.empleadoDAO;
import encapsulacion.empleado;
import java.util.List;

/**
 *
 * @author byron
 */
public class logicaEmpleados {
     empleadoDAO datos=new empleadoDAO();
     
    public void agregarEmpleado(empleado emp) {
                  
       datos.guardaEmpleado(emp);
      
    }   
    
    public List<empleado> consultar(){
        List<empleado> empleados=null;
        empleados=datos.obtenerEmpleados();
        return  empleados;
    }
           
   
    

    public void validar(empleado emp) throws exceptionClass {
    
        
    if((emp.getNombre().length()<=0) || (!emp.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre ");
         }
    
    
    if((emp.getApellido().length()<=0) || (!emp.getApellido().matches("^[A-Za-z ]*$"))  ){ //Validando Apellido
           throw new exceptionClass("Datos Incorrectos","Campo: Apellido");
         }
    
   
    if((emp.getDui().trim().length()<=1)){ //Validando Dui
            throw new exceptionClass("Datos Incorrectos","Campo: DUI");
         }
    
    if(emp.getAfp().length()!=12){ //validando AFP
            throw new exceptionClass("Datos Incorrectos","Campo: AFP");
        }
    
    
    if((emp.getIsss().length()!=9)){ //Validando Isss
            throw new exceptionClass("Datos Incorrectos","Campo: ISSS");
         }
    
     if((emp.getNit().trim().length()<=3)){ //Validando NIT
            throw new exceptionClass("Datos Incorrectos","Campo: NIT");
         }
     
     if(emp.getDireccion().length()<=0){ //Validando Direccion
            throw new exceptionClass("Datos Incorrectos","Campo: Direccion");
         }
     
     
        
     
     
    }
    
    
   
}
