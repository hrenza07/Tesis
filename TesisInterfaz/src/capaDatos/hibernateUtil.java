/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package capaDatos;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Xino
 */
public class hibernateUtil {
    
  private static final SessionFactory sessionFactory;   

    static 
    { 
        try 
        { 
            Configuration configuration = new Configuration();
            System.out.println("begin");
            configuration.configure("hibernate.cfg.xml");
            StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
            System.out.println("ready");
            sessionFactory = configuration.buildSessionFactory(builder.build());
            System.out.println("success");
        }catch (HibernateException he) 
        { 
           System.err.println("Ocurrió un error en la inicialización de la SessionFactory: " + he); 
           throw new ExceptionInInitializerError(he); 
        } 
    }  

    public static SessionFactory getSessionFactory() 
    { 
        return sessionFactory; 
    } 
    
    
}
