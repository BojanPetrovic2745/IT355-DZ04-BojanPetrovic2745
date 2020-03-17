package paket;


import java.util.ArrayList;
import java.util.List;
import javax.servlet.jsp.PageContext;

public class StockPriceGenerator {

    private List<String> podrzaniSimboli = new ArrayList<>();
    

    public StockPriceGenerator() {
        podrzaniSimboli.add("AAPL");
        podrzaniSimboli.add("MSFT");
        podrzaniSimboli.add("YHOO");
        podrzaniSimboli.add("AMZN");
        podrzaniSimboli.add("IBM");
    }
    
    public String getCena(String simbol, double kolicina) {
        
        String cena;

        if (podrzaniSimboli.indexOf(simbol.toUpperCase()) != -1) {
            cena = new Double(Math.random() * 100 * kolicina).toString();
        } else {
            cena ="Simbol nije korektan";
           
        }
        return cena;
    }

    private String getPodrzaniSimboli() {
        StringBuilder simboli = new StringBuilder();
        for (String symbolName : podrzaniSimboli) {
            simboli.append(symbolName);
            simboli.append(" ");
        }
        return simboli.toString();
    }
}


