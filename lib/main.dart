import 'package:flutter/material.dart';
import 'package:flutter_application_6/provider/home_proider.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> HomeProvider() )
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}