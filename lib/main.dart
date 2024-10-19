import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateproject1/homepage.dart';
import 'package:stateproject1/list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumbersListProvider())
      ],
      child: MaterialApp(
        home: Homepage()
      ),
    );
  }
}

