package paket;

import java.io.Serializable;

public class Stock implements Serializable {

    private String simbol;
    private double kolicina;

    public Stock(String simbol, double kolicina) {
        this.simbol = simbol;
        this.kolicina = kolicina;
    }

    public Stock() {
    }

    public double getKolicina() {
        return kolicina;
    }

    public void setKolicina(double kolicina) {
        this.kolicina = kolicina;
    }

    public String getSimbol() {
        return simbol;
    }

    public void setSimbol(String simbol) {
        this.simbol = simbol;
    }
}
