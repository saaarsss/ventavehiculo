/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Sara
 */
public class DatosPersonalesVO {
    //Definimos las variables de aqui generamos todo
    private String datId,usuId,datNombre,datApellido,datTipoDocumento,
            datNumDocumento,datTelefono,datCorreo;
    
    
    //necesitamos un constructor vacio por si no recibe datos
    public DatosPersonalesVO() {
        
    }

    //necesitamos uno lleno para que envie al DAO
    public DatosPersonalesVO(String datId, String usuId, String datNombre, String datApellido, String datTipoDocumento, String datNumDocumento, String datTelefono, String datCorreo) {
        this.datId = datId;
        this.usuId = usuId;
        this.datNombre = datNombre;
        this.datApellido = datApellido;
        this.datTipoDocumento = datTipoDocumento;
        this.datNumDocumento = datNumDocumento;
        this.datTelefono = datTelefono;
        this.datCorreo = datCorreo;
    }

    //generamos los getters and setters--
    //para obtener y enviar
    
    public String getDatId() {
        return datId;
    }

    public void setDatId(String datId) {
        this.datId = datId;
    }

    public String getUsuId() {
        return usuId;
    }

    public void setUsuId(String usuId) {
        this.usuId = usuId;
    }

    public String getDatNombre() {
        return datNombre;
    }

    public void setDatNombre(String datNombre) {
        this.datNombre = datNombre;
    }

    public String getDatApellido() {
        return datApellido;
    }

    public void setDatApellido(String datApellido) {
        this.datApellido = datApellido;
    }

    public String getDatTipoDocumento() {
        return datTipoDocumento;
    }

    public void setDatTipoDocumento(String datTipoDocumento) {
        this.datTipoDocumento = datTipoDocumento;
    }

    public String getDatNumDocumento() {
        return datNumDocumento;
    }

    public void setDatNumDocumento(String datNumDocumento) {
        this.datNumDocumento = datNumDocumento;
    }

    public String getDatTelefono() {
        return datTelefono;
    }

    public void setDatTelefono(String datTelefono) {
        this.datTelefono = datTelefono;
    }

    public String getDatCorreo() {
        return datCorreo;
    }

    public void setDatCorreo(String datCorreo) {
        this.datCorreo = datCorreo;
    }
    
    
   

    
}
