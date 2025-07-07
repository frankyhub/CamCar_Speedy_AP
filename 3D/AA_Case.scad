/*
*******************************************
Objekt Info: AA Batterie Box einfach/zweifach

*******************************************
Version: 11.07.2023 khf
*******************************************
*/

//***************   Auswahl   *************

        //Auswahl 1x Case oder 2x Case
        part="case2"; // case1, case2

//***************   Libraries  ************

//keine

//*****************************************

//***************  Parameter   *************
$fn=60;
//*****************************************

//**************   Programm  **************

//-----------------------------------
module case1(){
//Case 1x
 union(){
difference()
translate(v = [0, 21, 0])
difference(){
cube(size = [64,18,14], center = true);
translate(v = [0, 0, 1])
cube(size = [60,15,15], center = true);
}
}
}
//-----------------------------------

//-----------------------------------
module case2(){
//Case 1
 union(){
difference()
translate(v = [0, 21, 0])
difference(){
cube(size = [64,18,14], center = true);
translate(v = [0, 0, 1])
cube(size = [60,15,15], center = true);
}

}

//Case 2

difference()
translate(v = [0, 37, 0])
difference(){
cube(size = [64,18,14], center = true);
translate(v = [0, 0, 1])
cube(size = [60,15,15], center = true);
}
}
//-----------------------------------

//Part:

  if(part=="case1")
    case1();
  else if(part=="case2")
    case2();