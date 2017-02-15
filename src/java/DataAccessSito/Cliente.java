/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.time.LocalDate;

/**
 *
 * @author ardemus
 */
public class Cliente {
    private String email;
    private String password;
    private String nome;
    private String cognome;
    private String via;
    private String paese;
    private String carta;
    private int tipoCliente;
    private LocalDate dataNascita;

    public LocalDate getDataNascita() {
        return dataNascita;
    }

    public void setDataNascita(String dataNascita) {
        this.dataNascita = LocalDate.parse(dataNascita);
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public void setPaese(String paese) {
        this.paese = paese;
    }

    public void setCarta(String carta) {
        this.carta = carta;
    }

    public void setTipoCliente(int tipoCliente) {
        this.tipoCliente = tipoCliente;
    }
    
    

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }

    public String getVia() {
        return via;
    }

    public String getPaese() {
        return paese;
    }

    public String getCarta() {
        return carta;
    }

    public int getTipoCliente() {
        return tipoCliente;
    }

    @Override
    public String toString() {
        return "Cliente{" + "email=" + email + ", password=" + password + ", nome=" + nome + ", cognome=" + cognome + ", via=" + via + ", paese=" + paese + ", carta=" + carta + ", tipoCliente=" + tipoCliente + '}';
    }
    
    
    
    
}
