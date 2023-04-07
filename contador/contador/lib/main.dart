import 'package:flutter/material.dart';

void main() {

runApp( const MaterialApp(

home: contador(),

));
}

class contador extends StatefulWidget {

 const contador({super.key});

@override

 State<contador> createState() => _contadorState();
}

void decrement(){
  print("Decrement");
}

void increment(){
  print("Increment");
}

class _contadorState extends State<contador> {
@override
Widget build(BuildContext context) {
  return  Scaffold(
    backgroundColor: Colors.red,
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
      Text("Pode Entrar", style: TextStyle(fontSize: 30,color: Colors.white),),
      Text("0", style: TextStyle(fontSize: 30,color: Colors.white),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [  

          TextButton(
            onPressed: decrement,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)            
              )
            ), 
            child: Text("Saiu", style: TextStyle(fontSize: 16,color: Colors.black),
          )                             
          ),
          
          SizedBox(width: 64,),

          TextButton(
            onPressed: increment,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)            
              )
            ), 
            child: Text("Entrou", style: TextStyle(fontSize: 16,color: Colors.black),

          ),
                   
          ),
        ],
          
      )
   ],
  )
  );
}
}


