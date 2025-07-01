import 'package:flutter/material.dart';

main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primarySwatch: Colors.red,useMaterial3: false),

        darkTheme: ThemeData(primarySwatch: Colors.yellow, useMaterial3: false),

        color: Colors.yellowAccent,
        debugShowCheckedModeBanner: false,
        home :HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Home"),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],

        onTap: (int index){

          if(index==0){
            mySnackBar("I am Home BottomBar",context);
          }
          if(index==1){
            mySnackBar("I am Cart BottomBar",context);
          }
          if(index==2){
            mySnackBar("I am Profile BottomBar",context);
          }

        },



      ),
      drawer: Drawer(),

      body: Text("This is Navigation Drawer"),
      
    );
  }

}