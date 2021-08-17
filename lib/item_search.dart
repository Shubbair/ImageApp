import 'package:flutter/material.dart';

import 'image.dart';
import 'image_item.dart';

class ItemSearch extends StatelessWidget {
  const ItemSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Image Gallery'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent[700],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: TextFormField(
                      onFieldSubmitted: (text) {
                        print(text);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        ),
                        // suffixIcon: Icon(Icons.ac_unit),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide.none,
                          //borderSide: const BorderSide(),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: "WorkSansLight"),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new ImageItem(
                    img: new ImageStruct(
                        path: 'images/1.png', marginTop: 10.0, marginLeft: 0.0, marginBottom: 0.0),
                  ),
                   new ImageItem(
                    img: new ImageStruct(
                        path: 'images/2.png', marginTop: 10.0, marginLeft: 16.0, marginBottom: 0.0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new ImageItem(
                    img: new ImageStruct(
                        path: 'images/3.png', marginTop: 16.0, marginLeft: 0.0,marginBottom: 0.0),
                  ),
                   new ImageItem(
                    img: new ImageStruct(
                        path: 'images/4.png', marginTop: 16.0, marginLeft: 16.0, marginBottom: 0.0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new ImageItem(
                    img: new ImageStruct(
                        path: 'images/5.png', marginTop: 16.0, marginLeft: 0.0, marginBottom: 16.0),
                  ),
                   new ImageItem(
                    img: new ImageStruct(
                        path: 'images/6.png', marginTop: 16.0, marginLeft: 16.0, marginBottom: 16.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
