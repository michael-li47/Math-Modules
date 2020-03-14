void setup() {
  Fraction e = new Fraction( 1, 2 );
  Fraction f = new Fraction( 4, 3, "f" );
  Fraction g = new Fraction( 20, 80, "g" );

  println();

  //USING THE display() METHOD
  e.display();
  f.display();
  g.display();

  println();


  //USING THE reduce() METHOD
  g.reduce();
  g.display();

  println();

  //USING THE toDecimal() METHOD
  float fDecimal = f.toDecimal();
  float gDecimal = g.toDecimal();
  println( f.label + " is equivalent to " + fDecimal);
  println( g.label + " is equivalent to " + gDecimal);

  println();


  //USING METHODS THAT CREATE AND RETURN NEW FRACTION OBJECTS: reciprocal(), multiply(), add(), power()
  Fraction oneOverF = f.reciprocal();
  oneOverF.setLabel("1 / f");
  oneOverF.display();

  Fraction oneOverG = g.reciprocal();
  oneOverG.setLabel("1 / g");
  oneOverG.display();

  println();

  Fraction prodFG = f.multiply(g);
  prodFG.setLabel("f x g");
  prodFG.display();
  prodFG.reduce();
  prodFG.display();

  println();

  Fraction fSquared = f.multiply(f);
  fSquared.setLabel("f^2");
  fSquared.display();

  Fraction fCubed = fSquared.multiply(f);
  fCubed.setLabel("f^3");
  fCubed.display();

  float fCubedDecimal = fCubed.toDecimal();
  println("f^3 is equivalent to " + fCubedDecimal);

  println();

  Fraction fToTheFour = f.power(4);
  fToTheFour.reduce();
  fToTheFour.setLabel("f^4");
  fToTheFour.display();

  Fraction sumFG = f.add(g);
  sumFG.setLabel("f + g");
  sumFG.display();


  int gcd = Fraction.getGCD(12, 15);
  int lcm = Fraction.getLCM(12, 15);

  println( "The GCD of 12 and 15 is " + gcd + ", and their LCM is " + lcm + "\n" );

}
