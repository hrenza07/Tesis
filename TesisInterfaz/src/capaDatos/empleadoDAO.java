/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import encapsulacion.empleado;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
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
  
   public List<empleado> obtenerEmpleados(int id){
        
        List<empleado> empleados=null;
        //String hql= "FROM empleado E WHERE E.departamento.id =:ide";
        
        try{
             iniciaOperacion();
             Query query=sesion.createQuery("FROM departamento D join D.empleado WHERE D.id= 45");
            // query.setParameter("ide", id);
             empleados=query.list();        
        
        }finally{  
            sesion.close();   
        }  
       return empleados;
   }
  
}
