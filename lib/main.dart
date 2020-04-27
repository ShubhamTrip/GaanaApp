import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gaanaapp/Slides/Genre.dart';
import 'package:gaanaapp/Slides/HoriOption.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Front(),
  ));
}

class Front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        body: ListView(

            children: <Widget>[
               search(),
              Horilist(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,8.0),

                child: Container(
                  height: 200,
                  child: Genre(),
                  color: Colors.grey[700],
                ),
              )

            ],

          ),
        ),
    );
  }
}

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: Colors.grey[500],
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
            child: Icon(
              Icons.radio,
              color: Colors.grey[500],
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[500],
          ),
          labelText: "Search",
          hintText: "Search a song",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.grey[500])),
        ),
        cursorColor: Colors.grey,
      ),
    );
  }
}
