import 'package:flutter/material.dart';
import 'package:image_app/image.dart';

class ImageItem extends StatelessWidget {
  final ImageStruct img;
  ImageItem({required this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: this.img.marginTop,
          left: this.img.marginLeft,
          bottom: this.img.marginBottom),
      width: 175,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(this.img.path), fit: BoxFit.cover),
          color: Colors.green[300],
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              width: 175,
              margin: EdgeInsets.only(top: 152),
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
                      IconButton(onPressed: () {}, icon: Icon(Icons.save_alt)),
                    ],
                  )
                )
          ),
        ],
      )
      ),
    );
  }
}
