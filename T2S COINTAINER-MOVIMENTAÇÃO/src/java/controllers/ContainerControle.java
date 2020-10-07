package controllers;

import model.Container;
import model.Movimentacao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class ContainerControle {

  private Connection connection;
  private PreparedStatement stmt;

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
    } catch (Exception e) {
      throw new RuntimeException("Erro ao alterar" + e);
    }
  }

  public void deletar(Container container) {
    String sql = "";

    try {

    } catch (Exception e) {
      throw new RuntimeException("Erro ao inserir" + e);
    }
  }
}


