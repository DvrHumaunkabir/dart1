
import 'package:flutter/material.dart';

main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  
 
  

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());

  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }
  
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar( title: Text("New App", style: TextStyle(color: Colors.white,fontSize: 20),),
        titleSpacing: 0,
        toolbarHeight: 60,
        elevation: 100,
        backgroundColor: Colors.pink,
        actions: [

          IconButton(onPressed: (){MySnackBar("Click", context);}, icon: Icon(Icons.notifications,color: Colors.white,)),
          IconButton(onPressed: (){MySnackBar("Click", context);}, icon: Icon(Icons.person_off,color: Colors.white,)),
          IconButton(onPressed: (){MySnackBar("Click", context);}, icon: Icon(Icons.add_alert,color: Colors.white,)),

        ],


      ),
      
      body: Center(
        child: Text("hello how are kamon Asen kamen Saemnn fdjif fjhewfw"
            " oeirwjewn  ewjiwe jweojew  ewhjwe ihwerwe ",textAlign: TextAlign.start,maxLines: 2,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,letterSpacing: 3,wordSpacing: 20,overflow: TextOverflow.ellipsis),),
      ),


    );
  }


}