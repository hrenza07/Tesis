/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import encapsulacion.departamento;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Xino
 */
public class departamentoDAO {


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
    
  public void guardarDepartamento(Object s)
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
  public List<departamento> obtenerDepartamento(){
  
        List<departamento> dep=null;
        
        try{
             iniciaOperacion();
             dep=sesion.createQuery("from departamento").list();
        
        }finally{  
            sesion.close();   
        }  
        return dep;
  }
  
   public departamento buscarDepartamento(int ids){
  
        departamento dep=null;
        
        try{
             iniciaOperacion();
             dep=(departamento)sesion.get(departamento.class, ids);
        
        }finally{  
            sesion.close();   
        }  
        return dep;
  }
   
        public void Actualizar(Object d){
   
        try{ 
            iniciaOperacion(); 
            sesion.update(d);
            tx.commit(); 
       }catch (HibernateException he){ 
        
           manejaExcepcion(he); 
           throw he; 
        
       }finally{ 
        
            sesion.close(); 
    } 
  }
        
     public void eliminar(Object dep){
     
         try { 
            
             iniciaOperacion(); 
             sesion.delete(dep); 
             tx.commit(); 
    
         }catch(HibernateException he){ 
        
            manejaExcepcion(he); 
            throw he; 
    }finally{ 
        
             sesion.close(); 
    } 
     
     
     }   
        
  
}
