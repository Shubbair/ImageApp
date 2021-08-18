import 'package:flutter/material.dart';

class GetData extends StatelessWidget {
  const GetData({Key? key}) : super(key: key);
  
  static const int height = 400;
  static const int width = 500;
  static const String text = 'yea';
  static const String categiory = 'technology';
  static const String color = 'white';
  static const String Url = 'https://temp.media/?height=$height&width=$width&text=$text&category=$categiory&color=$color';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFAFAFA),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Image.network(Url),
      // body: Center(child: Image.network('https://temp.media/?height=$height&width=$width&text=test&category=technology&color=IndianRed')),
    );
  }
}
