/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

// Recoger los datos pasarlos de forma segura al DAO
public class UsuarioVO {

    //atributos
    //los dejamos string para optimizar el sistema y prque no vamos hacer ninguna operacion para estos
    // private String usuId, usuLogin, usuPassword; a esta linea de codigo puedo generar el constructor y los 
    //get and set click derecho insertar codigo y ahi escojo
    private String usuId, usuLogin, usuPassword;
    private String rolId, rolTipo;
    //metodos constructores

    //dejar un constructor vacio
    //el vacio es para cuando el VO no vaya a recibir datos sino que VAYA A ENVIAR
    public UsuarioVO() {
    }
    
    //y uno lleno
    //vamos a recibir los datos del controlador para cuando el DAO los pida se los envie
    //los recibe y los almacena estan seguros 
    public UsuarioVO(String usuId, String usuLogin, String usuPassword) {
        this.usuId = usuId;
        this.usuLogin = usuLogin;
        this.usuPassword = usuPassword;
    }
//aca agregamos los otros que nos va a pedir el DAO
    public UsuarioVO(String usuId, String rolTipo) {
        this.usuId = usuId;
        this.rolTipo = rolTipo;
    }

    
    
    //getter and setters
    public String getUsuId() {
        return usuId;
    }

    public void setUsuId(String usuId) {
        this.usuId = usuId;
    }

    public String getUsuLogin() {
        return usuLogin;
    }

    public void setUsuLogin(String usuLogin) {
        this.usuLogin = usuLogin;
    }

    public String getUsuPassword() {
        return usuPassword;
    }

    public void setUsuPassword(String usuPassword) {
        this.usuPassword = usuPassword;
    }

    public String getRolId() {
        return rolId;
    }

    public void setRolId(String rolId) {
        this.rolId = rolId;
    }

    public String getRolTipo() {
        return rolTipo;
    }

    public void setRolTipo(String rolTipo) {
        this.rolTipo = rolTipo;
    }
    
    

}
