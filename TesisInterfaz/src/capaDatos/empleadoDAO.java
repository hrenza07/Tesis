/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

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
    
  private void iniciaOperacion() throws HibernateException{
    
      sesion = hibernateUtil.getSessionFactory().openSession();
      tx = sesion.beginTransaction();
        
        }
    
  private void manejaExcepcion(HibernateException he) throws HibernateException{
    
    tx.rollback();
    he.printStackTrace();
    throw new HibernateException("Ocurrió un error en la capa de acceso a datos", he);
        
        }
    
  public void guardaEmpleado(Object s)
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
    
}
