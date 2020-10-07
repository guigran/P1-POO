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
public class Movimentacao {
    
private int cd_movimentacao;
private String nm_navio;
private String gp_movimentacao;
private String dt_inicio;
private String dt_fim;
private String cd_container;

    public int getCd_movimentacao() {
        return cd_movimentacao;
    }

    public void setCd_movimentacao(int cd_movimentacao) {
        this.cd_movimentacao = cd_movimentacao;
    }

    public String getNm_navio() {
        return nm_navio;
    }

    public void setNm_navio(String nm_navio) {
        this.nm_navio = nm_navio;
    }

    public String getGp_movimentacao() {
        return gp_movimentacao;
    }

    public void setGp_movimentacao(String gp_movimentacao) {
        this.gp_movimentacao = gp_movimentacao;
    }

    public String getDt_inicio() {
        return dt_inicio;
    }

    public void setDt_inicio(String dt_inicio) {
        this.dt_inicio = dt_inicio;
    }

    public String getDt_fim() {
        return dt_fim;
    }

    public void setDt_fim(String dt_fim) {
        this.dt_fim = dt_fim;
    }

    public String getCd_container() {
        return cd_container;
    }

    public void setCd_container(String cd_container) {
        this.cd_container = cd_container;
    }
    
    
}
