/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pribantsa.hbn;

import com.pribantsa.demo.Departamento;
import java.util.List;

/**
 *
 * @author Rolando
 */
public class DepartamentoDaoHibernate extends AbstractDao {

    public DepartamentoDaoHibernate() {
        super();
    }

    /**
     * Insert a new Departamento into the database.
     * @param departamento
     */
    public void save(Departamento departamento) throws DataAccessLayerException {
        super.save(departamento);
    }

    /**
     * Updates a new Departamento into the database.
     * @param departamento
     */
    public void update(Departamento departamento) throws DataAccessLayerException {
        super.update(departamento);
    }

    /**
     * Delete a detached Departamento from the database.
     * @param departamento
     */
    public void delete(Departamento departamento) throws DataAccessLayerException {
        super.delete(departamento);
    }

    /**
     * Find an Event by its primary key.
     * @param id
     * @return
     */
    public Departamento find(Long id) throws DataAccessLayerException {
        return (Departamento) super.find(Departamento.class, id);
    }

    /**
     * Lista todos los departamentos de la base de datos
     * @return
     */
    public List findAll() throws DataAccessLayerException {
        return super.findAll(Departamento.class);
    }
}
