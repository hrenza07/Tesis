/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import encapsulacion.empleado;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Xino
 */
public class empleadoDAO {
    

    private Session sesion;
    private Transaction tx;
    idxManager index =new idxManager();
    
  private void iniciaOperacion() throws HibernateException{
    
      sesion = hibernateUtil.getSessionFactory().openSession();
      tx = sesion.beginTransaction();
       
        }
    
  private void manejaExcepcion(HibernateException he) throws HibernateException{
    
    tx.rollback();
    he.printStackTrace();
    throw new HibernateException("Ocurrió un error en la capa de acceso a datos", he);
        
        }
    
  public void guardaEmpleado(empleado emp)
{ 
    try 
    { 
        iniciaOperacion(); 
        emp.setIdx(index.idxNext());
        sesion.save(emp); 
        tx.commit();
        sesion.close();
        System.out.println("sesion Cerrada");
   
    }catch(HibernateException he){ 
        manejaExcepcion(he);
        throw he;    
}
  
}
   public List<empleado> obtenerEmpleados(){
  
        List<empleado> empleados=null;
        
        try{
             iniciaOperacion();
             empleados=sesion.createQuery("from empleado").list();
        
        }finally{  
            sesion.close();   
        }  
        return empleados;
  }
  
  
  
}
