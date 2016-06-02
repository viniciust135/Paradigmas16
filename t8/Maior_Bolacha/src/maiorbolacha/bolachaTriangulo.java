package maiorbolacha;

import java.util.Random;
import ponto.Ponto;

public class bolachaTriangulo extends Bolacha{
    
    private double base;
    private double altura;
    
    public bolachaTriangulo(int x, int y)
    {
        Random random = new Random();
        Ponto p = new Ponto(x*12, y*12);
        
        super.ponto = p;
        base = random.nextDouble() * 6 + 0.1;
        altura = random.nextDouble()* 6 + 0.1;
        super.tam = (base*altura)/2;
    }
}
