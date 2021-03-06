/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.GregorianCalendar;

/**
 *
 * @author ardemus
 */
public class Prenotazione {
    private String produttore;
    private String cliente;
    private int numero_prenotazione;
    private int tpo_prenotazione;
    private String indirizzoCliente;
    private int tipo_pagamento;
    private String  data_prenotazione;
   

    public void setProduttore(String produttore) {
        this.produttore = produttore;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public void setNumero_prenotazione(int numero_prenotazione) {
        this.numero_prenotazione = numero_prenotazione;
    }

    public void setTpo_prenotazione(int tpo_prenotazione) {
        this.tpo_prenotazione = tpo_prenotazione;
    }

    public void setTipo_pagamento(int tipo_pagamento) {
        this.tipo_pagamento = tipo_pagamento;
    }
   
  public void setData_prenotazione(String  data_prenotazione) {
        this.data_prenotazione = data_prenotazione;
    }  

    public void setIndirizzoCliente(String indirizzoCliente) {
        this.indirizzoCliente = indirizzoCliente;
    }
   

  
  
  
  
    public String getProduttore() {
        return produttore;
    }

    public String getCliente() {
        return cliente;
    }

    public int getNumero_prenotazione() {
        return numero_prenotazione;
    }

    public int getTpo_prenotazione() {
        return tpo_prenotazione;
    }

    public int getTipo_pagamento() {
        return tipo_pagamento;
    }

    public String  getData_prenotazione() {
        return data_prenotazione;
    }

    public String getIndirizzoCliente() {
        return indirizzoCliente;
    }
}
