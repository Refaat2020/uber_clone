import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uberclone/Ui/Home.dart';
import 'states/AppState.dart';

void main() {
  return runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppState())
  ],
    child: MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uber clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

