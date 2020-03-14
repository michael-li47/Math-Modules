class ComplexNumber {
  float a,b;
  String label;
  
  //Constructors
  ComplexNumber( float A, float B ) {
    this.a = A;
    this.b = B;
  }
  
  ComplexNumber( float A, float B, String l ) {
    this.a = A;
    this.b = B;
    this.label = l;
  }
  
  //METHODS
  //Display info
  void display() {
    //String s = getPrintableNumber(this.a, this.b);
    String s = getPrintableNumber();
    if ( this.label == "" )
      println( s );
        
    else
      println( label + " = " + s );
  }
  
  //Rewriting the expression with proper rules
  String getPrintableNumber() {
    String numString = ""; //Empty string, parts of the expression will later be added on
    int x = 0;
    int y = 0;
    
    //Check if a value is 0.
    //If it is, don't do anything, and move onto the "b" part of the expression
    if( this.a == 0 ) {
      //If a and b are 0, the expression is equal to 0
      if( this.b == 0 )
        numString += "0";
        
      //If a is 0, and b is 1, the expression is equal to i
      else if( this.b == 1 )
        numString += "i";
      
      //If a is 0, and b is -1, the expression is equal to -i
      else if( this.b == -1 )
        numString += "-i";
      
      //Otherwise, if -1 > b > 1
      else
        //Remove decimal if b is a whole number
        //Add the b part of the expression
        if( this.b % 1 == 0 ){
          y = round(this.b);
          numString += y + "i";
        }
        
        else
          numString += this.b + "i";
    }
      
    //If a != 0  
    else {
      //Remove decimal if a is a whole number
      //Add the a part of the expression
      if( this.a % 1 == 0 ){
        x = round(this.a);
        numString += x;
      }
      
      else
        numString += this.a;
      
      //If b = 0, do nothing
      if( this.b == 0 )
        numString += "";
      
      //If b = 1, add "+" and "i" to the expression
      else if( this.b == 1 )
        numString += "+i";
      
      //If b = -1, add "-" and "i" to the expression
      else if( this.b == -1 )
        numString += "-i";
      
      //If b is negative
      else if( this.b < 0 )
        
        //Remove decimal if b is a whole number
        //Add the b part of the expression
        if( this.b % 1 == 0 ){
            y = round(this.b);
            numString += y + "i";
          }
          
        else
          numString += this.b + "i";
      
      //If b != 1 && b > 0
      else
        //Remove decimal if b is a whole number
        //Add the b part of the expression
        if( b % 1 == 0 ){
          y = round(this.b);
          numString += "+" + y + "i";
        }
        
        else
          numString += "+" + this.b + "i";
    }
    return numString;
  }
  
  //Set Label
  void setLabel( String name ) {
    this.label = name;
  }
  
  //Add complex number
  ComplexNumber add(ComplexNumber other) {
    float x, y;
    
    x = this.a + other.a; //Add real number part
    y = this.b + other.b; //Add imaginary part
    
    return new ComplexNumber( x, y );
  }
  
  //Subtract complex number
  ComplexNumber sub(ComplexNumber other) {
    float x, y;
    
    x = this.a - other.a; //Subtract real number part
    y = this.b - other.b; //Subtract imaginary part
    
    return new ComplexNumber( x, y );
  }
  
  //Multiply by real number
  ComplexNumber multByRealNum( float n ) {
    float term1, term2;
    
    term1 = this.a * n; //Multiply real number part
    term2 = this.b * n; //Multiply imaginary part
    
    return new ComplexNumber( term1, term2);
  }
  
  //Multiply by complex number
  ComplexNumber multByComplexNum( ComplexNumber other ) {
    float term1, term2, term3, term4;
    
    //FOIL
    term1 = this.a * other.a;
    term2 = this.a * other.b;
    term3 = this.b * other.a;
    term4 = this.b * other.b;
    
    //Simplifying i squared
    term4 *= -1;
    
    //Collecting like terms
    term1 += term4;
    term2 += term3;
    
    return new ComplexNumber( term1, term2 );
  }
  
    //Divide by real number
  ComplexNumber divByRealNum( float n ) {
    float term1, term2;
    
    term1 = this.a / n; //Divide real number part
    term2 = this.b / n; //Divide imaginary part
    
    return new ComplexNumber( term1, term2 );
  }
  
  //Divide by complex number
  ComplexNumber divByComplexNum( ComplexNumber other ) {
    ComplexNumber c1, c2, c3;
    
    c1 = this.multByComplexNum(other.conjugate()); //Multiply by the conjugate of the denominator to balance the expression
    c2 = other.multByComplexNum(other.conjugate()); //Multiply the conjugate of the denominator to remove the imaginary part
    
    c3 = c1.divByRealNum(c2.a); //Now that c2 is a real number, we can do simple division
    
    return c3;
  }
  
  //Power
  ComplexNumber power( int p ) {
    ComplexNumber num = this;
    
    //Multiply num p times by the original number
    for( int i = 0; i < (p-1); i++ ) {
       num = num.multByComplexNum(this);
    }
    
    return num;
  }
  
  //Square complex number
  ComplexNumber square() {
    return this.multByComplexNum(this); //Multiply by itself
  }
  
  //Absolute value
  float abs() {
    float absoluteValue = sqrt(pow(this.a, 2) + pow(this.b, 2));
    return absoluteValue;
  }
  
  //Conjugate of complex number
  ComplexNumber conjugate() {
    float x = this.b * -1; //Multiply b by -1
    return new ComplexNumber( this.a, x );
  }
  
  
  
  
  
  
  
  
  
  
  
  
}
