/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import encapsulacion.cargo;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Xino
 */
public class puestoTrabajoDAO {

        private Session sesion;
        private Transaction tx;
       
  private void iniciaOperacion() throws HibernateException{
    
      sesion = hibernateUtil.getSessionFactory().openSession();
      tx = sesion.beginTransaction();
      
        }
  
   private void manejaExcepcion(HibernateException he) throws HibernateException{
    
    tx.rollback();
    he.printStackTrace();
    throw new HibernateException("Ocurrió un error en la capa de acceso a datos", he);
        }
   
    public void guardarCargo(Object s)
{ 
    try 
    { 
        iniciaOperacion(); 
        System.out.println("sesion Iniciada");
        sesion.save(s);
        tx.commit();
        sesion.close();
        System.out.println("sesion Cerrada");
   
    }catch(HibernateException he){ 
        manejaExcepcion(he);
        throw he;    
}
  
}
 
    public List<cargo> obtenerCargos(){
  
        List<cargo> c=null;
        
        try{
             iniciaOperacion();
             c=sesion.createQuery("from cargo").list();
        
        }finally{  
            sesion.close();   
        }  
        return c;
  }
    
     public cargo buscarCargo(int ids){
  
        cargo c=null;
        
        try{
             iniciaOperacion();
             c=(cargo)sesion.get(cargo.class, ids);
        
        }finally{  
            sesion.close();   
        }  
        return c;
  }
  
    
}
