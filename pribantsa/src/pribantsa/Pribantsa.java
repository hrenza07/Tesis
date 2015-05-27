/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pribantsa;
import com.pribantsa.hbn.*;
import com.pribantsa.pojo.*;
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
        DepartamentoDAO departamentoDAO = new DepartamentoDAO();
        Departamento departamento = new Departamento();
        departamento.setNombre("Rolando Palermo");
        departamento.setDescripcion("Rodríguez Cruz");
        departamentoDAO.guardarDepartamento(departamento);
    }
    
}
