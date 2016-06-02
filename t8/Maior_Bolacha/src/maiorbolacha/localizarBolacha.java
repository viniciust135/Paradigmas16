package maiorbolacha;

import java.util.ArrayList;
import java.util.Random;

public class localizarBolacha {
    
    public static void main (String[] args)
    {
        ArrayList <Bolacha> b = new ArrayList<>();
        Random random = new Random();
        
        int x, y; 
        double maiorB = 0;
        
        for(x = 1; x <= 5; x++)
        {
            for(y = 1; y <= 10; y++)
            {
                switch(random.nextInt(3))
                {
                    case 0:
                        b.add(new bolachaCirculo(x,y));
                        break;
                    case 1:
                        b.add(new bolachaTriangulo(x,y));
                        break;
                    case 2:
                        b.add(new bolachaRetangulo(x,y));
                        break;
                }
            }
        }
        
        for(Bolacha bolachaPeq : b)
        {
            System.out.println("Tam bolacha: " + bolachaPeq.tam);
            if(bolachaPeq.tam > maiorB)
                maiorB = bolachaPeq.tam;
        }
        System.out.println("Maior bolacha: " + maiorB);
    }
    
}
