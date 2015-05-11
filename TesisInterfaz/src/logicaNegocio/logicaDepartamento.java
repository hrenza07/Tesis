/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package logicaNegocio;

import capaDatos.departamentoDAO;
import encapsulacion.departamento;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Xino
 */
public class logicaDepartamento {
    
    departamentoDAO datos=new departamentoDAO();
    
    public void agregarDepartamento(departamento dep) {
         datos.guardarDepartamento(dep);
       }
    
    public List<departamento> consultar(){
        List<departamento> departamentos=null;
        departamentos=datos.obtenerDepartamento();
        return  departamentos;
    }
    
    public departamento buscar(int ids){
    
        departamento depar=null;
        depar=datos.buscarDepartamento(ids);
        return depar;
    
    }
    
    
    
    
    
           
    public void validar(departamento dep) throws exceptionClass {
        
            System.out.println("validando Nombre");
           System.out.println(dep.getNombre());
            
         if((dep.getNombre().length()<=0) || (!dep.getNombre().matches("^[A-Za-z ]*$"))){ //Validando Nombre 
            throw new exceptionClass("Datos Incorrectos","Campo: Nombre Departamento");
         }
            System.out.println("validando descripcion");
         if((dep.getDescripcion().length()<=0)){ //Validando Descripcion 
            throw new exceptionClass("Datos Incorrectos","Descipcion del Departamento Vacio ");
         }    
    }

}
