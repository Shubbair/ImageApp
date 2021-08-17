import 'package:flutter/material.dart';

class GetData extends StatelessWidget {
  const GetData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFAFAFA),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Center(child: Image.network('https://temp.media/?height=400&width=500&text=test&category=technology&color=IndianRed')),
    );
  }
}
