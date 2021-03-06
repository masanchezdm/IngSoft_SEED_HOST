/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.seedhost.fodupa.model.web;

import com.seedhost.fodupa.model.Carrera;
import org.apache.commons.io.FilenameUtils;
import org.primefaces.model.UploadedFile;


/**
 *
 * @author fergch97
 */

public class RegistraBean{
    private String nombre;
    private String apPaterno;
    private String apMaterno;
    private String correo;
    private String contrasena;
    private String confirm;
    private byte[] foto;
    private Carrera carrera;

    public String getNombre(){
        return nombre;
    }

    public String getApPaterno(){
        return apPaterno;
    }
    public String getApMaterno(){
        return apMaterno;
    }
    public String getCorreo(){
        return correo;
    }
    public String getContrasena(){
        return contrasena;
    }
    public String getConfirm(){
        return confirm;
    }
    public byte[] getFoto(){
        return foto;
    }
    public Carrera getCarrera(){
        return carrera;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public void setApPaterno(String apPaterno){
        this.apPaterno = apPaterno;
    }
    public void setApMaterno(String apMaterno){
        this.apMaterno = apMaterno;
    }
    public void setCorreo(String correo){
        this.correo = correo;
    }
    
    public void setContrasena(String contrasena){
        this.contrasena = contrasena;
    }
    public void setConfirm(String confirm){
        this.confirm = confirm;
    }
    
    //public void setFoto(UploadedFile foto){
    public void setFoto(byte[] foto){
      /*  String fileName = FilenameUtils.getName(foto.getFileName());
        String contentType = foto.getContentType();
        **/
        this.foto = foto;
        //this.foto = foto.getContents();
        /*for(int i = 0; i<this.foto.length; i++)
            System.out.print(this.foto[i]);*/
    }
    public void setCarrera(Carrera carrera){
        this.carrera = carrera;
    }

}
