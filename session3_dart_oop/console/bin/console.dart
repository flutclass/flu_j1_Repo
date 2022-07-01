import 'package:console/console.dart' as console;



  mixin hello{

    String? sayHello ( ){
  
    }
  }
  mixin akbar on Car{
    
  }
void main() {
Car objCar = Car();
objCar.GetName("abtin", "Cheg");
}
///---------------------------------------
class Car extends Vehecle with hello {
  Car() {


  }

@override
void GetName(String Name , String LName) { 
     print("${this.Name}" );
   }

}

class Vehecle {  
   // field 
   String Name = "";
 String LName = "";
   String engine = "E1001";  
   int Speed = 1223;
   
   Vehecle(){
engine = "model2";


   }
   Vehecle.Ford(int speed){
    Speed = speed * 5;

   }
   // function 
   void GetName(String Name , String LName) { 
      print('${this.Name}   ${this.LName}');
   } 
}
//----------------------
abstract class Animal {
int energy = 0 , hungry = 0 ;
void sleep();
void eat();
void Play();

}

class Dog extends Animal {
  @override
  void Play() {
    // TODO: implement Play
  }

  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void sleep() {
    // TODO: implement sleep
  }
  // ---------------- 


}

