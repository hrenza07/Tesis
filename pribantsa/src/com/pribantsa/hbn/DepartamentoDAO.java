/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.pribantsa.hbn;
/**
 *
 * @author henry
 */

    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.pribantsa.pojo.Departamento;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DepartamentoDAO {

    private Session sesion;
    private Transaction tx;
    
  private void iniciaOperacion() throws HibernateException{
    
      sesion = HibernateUtil.getSessionFactory().openSession();
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
  public List<Departamento> obtenerDepartamento(){
  
        List<Departamento> dep=null;
        
        try{
             iniciaOperacion();
             dep=sesion.createQuery("from departamento").list();
        
        }finally{  
            sesion.close();   
        }  
        return dep;
  }
  
   public Departamento buscarDepartamento(int ids){
  
        Departamento dep=null;
        
        try{
             iniciaOperacion();
             dep=(Departamento)sesion.get(Departamento.class, ids);
        
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

