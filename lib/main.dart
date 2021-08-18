import 'package:flutter/material.dart';

import 'image_preview.dart';
import 'item_search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Fresh Garden',
      initialRoute: '/',
      routes: {
        '/': (context) => const ItemSearch(),
        '/image': (context) => const GetData(),
      },
    );
  }
}
