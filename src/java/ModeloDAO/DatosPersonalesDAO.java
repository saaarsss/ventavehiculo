/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.DatosPersonalesVO;
import ModeloVO.VehiculoVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.Conexion;

/**
 *
 * @author Sara
 */

//metodo vamo a buscar uno que se parezc a este ya no vamos a generar otras cosas
//hereda conexion
public class DatosPersonalesDAO extends Conexion {
    
      //1. Declarar atributos y metodos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private String sql;

    //consultar el usuario por el id el de consultar por placa se parece
    //recibe un idu
    public DatosPersonalesVO datosPersonales(String idUsuario) {

        //luego VO Vacio no recibe envia
        DatosPersonalesVO datVO = null;
        
        //haga la consulta con el id
        //el puente para la consulta
        try {
            conexion = this.obtenerConexion();
            sql = "select * from datospersonales where usuid=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idUsuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

        //aqui seleciona alt sobre DatosPersonales y elegimos el construc lleno     
        //si lo encuentra coja un VO desde 0 y llenelo
                datVO = new DatosPersonalesVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4),
                        mensajero.getString(5), mensajero.getString(6),
                        mensajero.getString(7), mensajero.getString(8));
            }
            
        //retornar datVO   
        } catch (SQLException e) {
            Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexion();
            } catch (SQLException e) {
                Logger.getLogger(DatosPersonalesDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return datVO;
    }
    
}
