import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Genre extends StatefulWidget {
  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
     color: Colors.grey[900],
     child: ListView(

        scrollDirection: Axis.horizontal,

        children: <Widget>[

          Cards(
            ImageUrl: 'images/gen1.jpg',
          ),
          Cards(
            ImageUrl: 'images/gen2.jpg',
          ),
          Cards(
            ImageUrl: 'images/gen3.jpg',
          ),
          Cards(
            ImageUrl: 'images/gen4.jpg',
          ),
          Cards(
            ImageUrl: 'images/gen5.jpg',
          ),
          Cards(
            ImageUrl: 'images/gen7.jpg',
          ),
          Cards(
            ImageUrl: 'images/gen8.jpg',
          ),
        ],
      ),
    );
  }

}

class Cards extends StatelessWidget {
  final String ImageUrl;

  const Cards({this.ImageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      width: 80.0,
      margin: EdgeInsets.only(right:2),


      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),

        child: Wrap(
          children: <Widget>[
           ClipRRect(
             borderRadius: BorderRadius.circular(10),

             child:  Image.asset(ImageUrl,height:72,fit: BoxFit.fill),

           )

          ],


        ),


      ),


    );
  }
}

