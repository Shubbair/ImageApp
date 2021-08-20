import 'package:cached_network_image/cached_network_image.dart';
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
      body: Center(
        child: CachedNetworkImage(
   imageUrl: Url,
   placeholder: (context, url) => new CircularProgressIndicator(
     color: Colors.black87,
   ),
   errorWidget: (context, url, error) => new Icon(Icons.error),
 ),
      ),
    );
  }
}