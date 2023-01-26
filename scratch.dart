// ignore_for_file: avoid_print

void main(){
  
  String name="Ben";
  int age = 12;

  var hobbies = <String>["eat, sleep, music"]; 

  print("My name is $name and my age is $age");
  print("My hobbies are $hobbies");

  void showInfo({required String name}){
    print("This is a function to print $name");
  }

  showInfo(name:"Anne");

  int addNumbers({required int number}){
    return 5+ number; 
  }

  print("5 + 5 is ${addNumbers(number: 5)}");
} 

// To run this file, use :
//  dart run scratch.dart in terminal