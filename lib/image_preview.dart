import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

String imageName = 'technology', width = '600', height = '600', text = 'test', color = 'white';

void getParam(param) {
  String data = param.toLowerCase();
  RegExp regExp = new RegExp(r'(,| , | ,|, )');
  List<String> result = data.split(regExp);
  int dataLength = data.split(regExp).length;

  for (int i = 0; i < dataLength; i++) {
    if (result[i].split(' ')[1] == 'image') {
      imageName = result[i].split(' ')[0];
    }
    if (result[i].split(' ')[1] == 'width') {
      width = result[i].split(' ')[0];
    }
    if (result[i].split(' ')[1] == 'height') {
      height = result[i].split(' ')[0];
    }
    if (result[i].split(' ')[1] == 'text') {
      text = result[i].split(' ')[0];
    }
    if (result[i].split(' ')[1] == 'color') {
      color = result[i].split(' ')[0];
    }
  }
}
class GetData extends StatelessWidget {
  const GetData({Key? key}) : super(key: key);

  // static const String Url =
  //     'https://temp.media/?height=$height&width=$width&text=$text&category=$categiory&color=$color';
  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments.toString();
    getParam(result);
    String Url =
    'https://temp.media/?height=$height&width=$width&text=$text&category=$imageName&color=$color';
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[700],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey[50]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                    Center(
            child: 
            Container( 
              width: MediaQuery.of(context).size.width * 0.9,
            child: Container(
              child: CachedNetworkImage(
                width: 100,
                imageUrl: Url,
                placeholder: (context, url) => new CircularProgressIndicator(
                  color: Colors.black87,
                ),
                errorWidget: (context, url, error) => new Icon(Icons.error),
              ),
            ),
          ),
         ),
          Center(
            child: 
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Colors.orangeAccent[700], // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Save',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(onPressed:(){}, icon: Icon(Icons.save_alt)),
                      ],
                    )
                  ),
            ),
          )
        ],
      ),
    );
  }
}
