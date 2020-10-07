/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Lucifer V2
 */
public class Container {
    
private int cd_container;
private String nm_cliente; 
private String id_container;
private String nm_tipo;
private String  ic_status_cheio_vazio;
private String nm_categoria_import_export;

    public int getCd_container() {
        return cd_container;
    }

    public void setCd_container(int cd_container) {
        this.cd_container = cd_container;
    }

    public String getNm_cliente() {
        return nm_cliente;
    }

    public void setNm_cliente(String nm_cliente) {
        this.nm_cliente = nm_cliente;
    }

    public String getId_container() {
        return id_container;
    }

    public void setId_container(String id_container) {
        this.id_container = id_container;
    }

    public String getNm_tipo() {
        return nm_tipo;
    }

    public void setNm_tipo(String nm_tipo) {
        this.nm_tipo = nm_tipo;
    }

    public String getIc_status_cheio_vazio() {
        return ic_status_cheio_vazio;
    }

    public void setIc_status_cheio_vazio(String ic_status_cheio_vazio) {
        this.ic_status_cheio_vazio = ic_status_cheio_vazio;
    }

    public String getNm_categoria_import_export() {
        return nm_categoria_import_export;
    }

    public void setNm_categoria_import_export(String nm_categoria_import_export) {
        this.nm_categoria_import_export = nm_categoria_import_export;
    }
    
    
}
