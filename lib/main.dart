import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tpaquiz/provider/home_screen.dart';
import 'package:tpaquiz/ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreen>(create: (_)=>HomeScreen(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
      ),
    );
  }
}



