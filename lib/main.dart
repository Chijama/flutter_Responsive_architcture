
import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/views/home_view.dart';


// void main() {
//   runApp(const MyApp());
// }
void main() {
  runApp(
    const MyApp(),
  
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}

