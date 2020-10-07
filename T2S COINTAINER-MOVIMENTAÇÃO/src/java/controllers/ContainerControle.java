package controllers;

import model.Container;
import model.Movimentacao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
        
        
public class ContainerControle {

    private Connection connection;
    private PreparedStatement stmt;
    private Statement st;
    private ArrayList<Container> lista = new ArrayList<>();
    private ResultSet rs;

    public ContainerControle() {
        connection = new ConnectionFactory().getConnection();
    }

    public void inserir(Container container) {
        String sql = "insert into container (nm_cliente, id_container, nm_tipo, ic_status_cheio_vazio, nm_categoria_import_export) VALUES ( ?, ?, ?, ?, ?)";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, container.getNm_cliente());
            stmt.setString(2, container.getId_container());
            stmt.setString(3, container.getNm_tipo());
            stmt.setString(4, container.getIc_status_cheio_vazio());
            stmt.setString(5, container.getNm_categoria_import_export());
            stmt.execute();
            stmt.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir" + e);
        }
    }

    public void alterar(Container container) {
        String sql = "UPDATE container SET  ";

        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, container.getNm_cliente());
            stmt.setString(2, container.getId_container());
            stmt.setString(3, container.getNm_tipo());
            stmt.setString(4, container.getIc_status_cheio_vazio());
            stmt.setString(5, container.getNm_categoria_import_export());
            stmt.setInt(6, container.getCd_container());
            stmt.execute();
            stmt.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao alterar" + e);
        }
    }

    public void deletar(int valor) {
        String sql = "DELETE FROM container WHERE cd_container= " + valor;
        try {
            st = connection.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao inserir" + e);
        }

    }


public ArrayList<Container> listar() {
    String sql = "SELECT * FROM container";

    try {
      st = connection.createStatement();
      rs = st.executeQuery(sql);
      while (rs.next()) {
        Container container = new Container();
        container.setCd_container(rs.getInt("cd_container"));
        container.setNm_cliente(rs.getString("nm_cliente"));
        container.setId_container(rs.getString("id_container"));
        container.setNm_tipo(rs.getString("nm_tipo"));
        container.setIc_status_cheio_vazio(rs.getString("ic_status_cheio_vazio"));
        container.setNm_categoria_import_export(rs.getString("nm_categoria_import_export"));    
        lista.add(container);
      }
    } catch (Exception e) {
      throw new RuntimeException("Erro ao listar" + e);
    }
    return lista;
  }

}