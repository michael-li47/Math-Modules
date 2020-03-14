void setup() {

  ComplexNumber z1 = new ComplexNumber( 2, 3, "z1" ); //→ 2+3i
  ComplexNumber z2 = new ComplexNumber( 0, 1, "z2" ); //→ i
  ComplexNumber z3 = new ComplexNumber( 6, 0, "z3" ); //→ 6
  ComplexNumber z4 = new ComplexNumber( 3, -4, "z4" ); //→ 3-4i
  ComplexNumber z5 = new ComplexNumber( -5, 2, "z5" ); //→ -5+2i
  ComplexNumber z6 = new ComplexNumber( 3, 4, "z6" ); //→ 3+4i
  ComplexNumber z7 = new ComplexNumber( 12.2, -1.5, "z7" ); //→ 12.2-1.5i
  ComplexNumber z8 = new ComplexNumber( 5, 0, "z8"); //→ 5
  ComplexNumber z9 = new ComplexNumber( 3, -4, "z9" );//→ 3-4i
  ComplexNumber z10 = new ComplexNumber( -5, 2, "z10" ); //→ -5+2i


  //Display info
  println("");
  println("Display()");
  z1.display();    //should print 3+4i
  z2.display();    //could print 12.2 + -1.5ii, but better is to print just 12.2 - 1.5i
  z3.display();    //could print 0 + 1i, but better is to print just i
  z4.display();    //could print 5 + 0i, but better is to print just 5
  z7.display();


  //Addition of complex number
  println("");
  println("Add( ComplexNumber )");
  ComplexNumber z11 = z1.add(z2); //2 + 4i
  z11.setLabel("z11");
  z11.display();
  ComplexNumber z12 = z1.add(z3); //8 + 3i
  z12.setLabel("z12");
  z12.display();


  //Subtraction of complex number
  println("");
  println("Sub( ComplexNumber )");
  ComplexNumber z13 = z1.sub(z2); //2 + 2i
  z13.setLabel("z13");
  z13.display();
  ComplexNumber z14 = z1.sub(z3); //-4 + 3i
  z14.setLabel("z14");
  z14.display();
  ComplexNumber z15 = z1.sub(z4); //-1 + 7i
  z15.setLabel("z15");
  z15.display();


  //Multiplication by real number
  println("");
  println("MultByRealNum( float )");
  ComplexNumber z16 = z1.multByRealNum( 4 ); //8+12i
  z16.setLabel("z16");
  z16.display();
  ComplexNumber z17 = z1.multByRealNum( 3 ); //6+9i
  z17.setLabel("z17");
  z17.display();


  //Multiplication by complex number
  println("");
  println("MultByComplexNum( ComplexNumber )");
  ComplexNumber z18 = z1.multByComplexNum(z4); //18 + i
  z18.setLabel("z18");
  z18.display();
  ComplexNumber z19 = z1.multByComplexNum(z5); //-16-11i
  z19.setLabel("z19");
  z19.display();


  //Division by real Number
  println("");
  println("DivByRealNum( float )");
  ComplexNumber z20 = z1.divByRealNum(2); //1+1.5i
  z20.setLabel("z20");
  z20.display();
  ComplexNumber z21 = z1.divByRealNum(5); //0.4+0.6i
  z21.setLabel("z21");
  z21.display();
  

  //Division by complex number
  println("");
  println("DivByComplexNum( ComplexNumber )");
  ComplexNumber z22 = z1.divByComplexNum(z4); //-0.24+0.68i
  z22.setLabel("z22");
  z22.display();
  ComplexNumber z23 = z1.divByComplexNum(z5); //-0.13793103-0.6551724i
  z23.setLabel("z23");
  z23.display();


  //Power
  println("");
  println("Power( int )");
  ComplexNumber z24 = z1.power(2); //-5+12i
  z24.setLabel("z24");
  z24.display();
  ComplexNumber z25 = z1.power(3); //-46+9i
  z25.setLabel("z25");
  z25.display();
  
  
  //Square
  println("");
  println("Square()");
  ComplexNumber z26 = z1.square(); //-5+12i
  z26.setLabel("z26");
  z26.display();
  ComplexNumber z27 = z2.square(); //-46+9i
  z27.setLabel("z27");
  z27.display();


  //Absolute value
  println("");
  println("Abs()");
  float z28 = z1.abs(); //3.6055512
  println("The absolute value of " + z1.getPrintableNumber() + " is", z28);
  float z29 = z4.abs(); //5
  println("The absolute value of " + z4.getPrintableNumber() + " is", z29);


  //Conjugate
  println("");
  println("Conjugate()");
  ComplexNumber z30 = z1.conjugate(); //2-3i
  z30.setLabel("z30");
  z30.display();
  ComplexNumber z31 = z2.conjugate(); //-i
  z31.setLabel("z31");
  z31.display();

}
