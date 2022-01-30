import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink.shade500,
        appBar: AppBar(
          title: const Text('Glassmorphism')
          ,),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlassContainer.clearGlass(height: 150, width: 150, child: Text('CLear Glass', style: TextStyle(color: Colors.white, fontSize: 30),)),
            const SizedBox(height: 20,),
            GlassContainer(
              height: 200, 
              width: 200,
              gradient: LinearGradient(colors: [Colors.green.withOpacity(0.5), Colors.blue.withOpacity(0.5)]),
              borderGradient: LinearGradient(colors: [Colors.green, Colors.blue]),
              borderWidth: 3,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Text('Glass Container', style: TextStyle(color: Colors.white, fontSize: 30),),
              blur: 10,
              )
          ],
        ),)
          ),
      );
  }
}