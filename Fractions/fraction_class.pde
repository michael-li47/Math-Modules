static class Fraction {
    
    //FIELDS
    int numerator;
    int denominator; 
    String label;
    
        
    //CONSTRUCTOR 1
    Fraction( int n, int d ) {
        this.numerator = n;
        this.denominator = d;
        this.label = "";
    }
    
    
    //CONSTRUCTOR 2
    Fraction( int n, int d, String l ) {
        this.numerator = n;
        this.denominator = d;
        this.label = l;
    }
    
    
    //CLASS METHODS
    void display() {         
        String printedFrac = this.numerator + "/" + this.denominator; //IMPROVE THIS SO THAT ONLY THE NUMERATOR GETS PRINTED IF THE DENOMINATOR = 1
        
        if ( label.equals("") )
            println( printedFrac );
        
        else
            println( label + " = " + printedFrac );   
    }
    
    
    void reduce() {
        int gcd = getGCD( numerator, denominator );
        numerator /= gcd;
        denominator /= gcd;       
    }
    
    
    float toDecimal() {
        return (float) numerator/denominator; //casting to float is needed to prevent Java from dropping the decimal
    }
    
    
    void setLabel( String name ) {
        this.label = name;
    }
    
      
    Fraction reciprocal() {
        Fraction recip = new Fraction( denominator, numerator );
        return recip;
    }
    
    
    Fraction multiply( Fraction other ) {
        int n1, n2, d1, d2;
        
        n1 = this.numerator;
        d1 = this.denominator;
        
        n2 = other.numerator;
        d2 = other.denominator;
        
        return new Fraction( n1*n2, d1*d2);    
    }
    
    
    Fraction multiplyByInteger( int i ) {
        int newNumerator = numerator * i;
        
        return new Fraction( newNumerator, denominator);
    }
   
 
    Fraction add( Fraction other ) {
      int n1, n2, d1, d2, n3, d3;
      int LCM; 
      n1 = this.numerator;
      d1 = this.denominator;
      
      n2 = other.numerator;
      d2 = other.denominator;
      LCM = getLCM(d1,d2);
      
      n1 *= LCM/d1;
      n2 *= LCM/d2;
      
      n3 = n1 + n2;
      d3 = LCM;
      
      
      return new Fraction( n3, d3);      
    }
    
    
    Fraction power( int p ) {
      Fraction f = this;
      
      for( int i = 0; i < (p-1); i++ ) {
        
        f = f.multiply(this);
        
        f.display();
      }
      return f;
    }
    
    static int getGCD(int a, int b) {
        int max, min, rem;
        
        max = Math.max(a, b);
        min = Math.min(a, b);
        
        rem = max % min;
        
        while (rem > 0) {
            max = min;
            min = rem;
            rem = max % min;
        }
        
        return min;
    }
    
    
    static int getLCM(int a, int b) {
        int GCD, LCM;
        
        GCD = getGCD(a,b);
        LCM = (a*b)/GCD;
        
        return LCM;
    }
    
    
    static Fraction decimalToFraction( float d ) {
        
        float numerator = d;
        int denominator = 1;
        
        while ( ! isWholeNumber(numerator) ) {
            numerator *= 10;
            denominator *= 10;
        } 
        
        int numer = (int) numerator;
        
        Fraction f = new Fraction(numer, denominator);
        f.reduce();
        
        return f;
    }
    
    
    private static boolean isWholeNumber( float d ) {
        return d == Math.round(d);
    }
    
}
