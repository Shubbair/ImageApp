import 'package:flutter/material.dart';

class ItemSearch extends StatelessWidget {
  const ItemSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent[700],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: TextFormField(
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
                            color: Colors.grey[500], fontFamily: "WorkSansLight"),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search',
                      ),
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
