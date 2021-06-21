/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author sara
 */
//los genericos por lo general son de la crud
//solo los declaro y donde los vaya a ulilizar ahi si lo genero es como una "herencia"

public interface Crud {

    public abstract boolean agregarRegistro();

    public abstract boolean actualizarRegistro();

    public abstract boolean eliminarRegistro();

}
