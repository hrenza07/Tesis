/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pribantsa;
import com.pribantsa.demo.Departamento;
import com.pribantsa.hbn.DepartamentoDaoHibernate;
import java.util.Date;
/**
 *
 * @author henry
 */
public class Pribantsa {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DepartamentoDaoHibernate departamentoDAO = new DepartamentoDaoHibernate();
        Departamento departamento = new Departamento();
        departamento.setNombre("Contabilidad");
        departamento.setDescripcion("Departamento de Contabilidad");
        departamentoDAO.save(departamento);
    }
    
}
