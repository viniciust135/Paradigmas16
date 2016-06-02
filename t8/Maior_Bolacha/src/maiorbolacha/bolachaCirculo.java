package maiorbolacha;
import java.util.Random;
import ponto.Ponto;

public class bolachaCirculo extends Bolacha{
    
    private double raio;
    
    public bolachaCirculo(int x, int y)
    {
        Random random = new Random();
        Ponto p = new Ponto(x*12, y*12);
        
        super.ponto = p;
        raio = random.nextDouble() * 6 + 0.1;
        super.tam = Math.PI * Math.pow(raio, 2);
    }
    
}
