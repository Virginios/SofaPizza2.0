/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessSito;

/**
 *
 * @author ardemus
 */
public class PizzePrenotate {
    private int numero_prenotazione;
    private int idpizza;
    private int prezzo;
    private int quantità;

    public int getNumero_prenotazione() {
        return numero_prenotazione;
    }

    public int getIdpizza() {
        return idpizza;
    }

    public int getPrezzo() {
        return prezzo;
    }

    public int getQuantità() {
        return quantità;
    }
    
    

    public void setNumero_prenotazione(int numero_prenotazione) {
        this.numero_prenotazione = numero_prenotazione;
    }

    public void setIdpizza(int idpizza) {
        this.idpizza = idpizza;
    }

    public void setPrezzo(int prezzo) {
        this.prezzo = prezzo;
    }

    public void setQuantità(int quantità) {
        this.quantità = quantità;
    }
    
    
}
