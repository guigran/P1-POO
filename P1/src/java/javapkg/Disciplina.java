package javapkg;

import java.util.ArrayList;

public class Disciplina {

    String nome;
    String ementa;
    int ciclo;
    float nota;

    public Disciplina(String nome, String ementa, int ciclo, float nota) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }

    public String getNome() {
        return nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }
    
    public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS disciplinas("
						+ "nome VARCHAR(50) UNIQUE NOT NULL,"
						+ "ementa VARCHAR(200) NOT NULL,"
						+ "ciclo int,"
						+ "nota float )";
    }
    
}
