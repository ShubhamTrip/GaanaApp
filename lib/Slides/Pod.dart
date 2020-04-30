import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Pod extends StatefulWidget {
  @override
  _PodState createState() => _PodState();
}

class _PodState extends State<Pod> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.only(top:40),
      color: Colors.grey[900],
      child: ListView(

        scrollDirection: Axis.horizontal,

        children: <Widget>[

          Cards(
            ImageUrl: 'images/pod1.jpg',
            Title: 'The Design Business Show',
          ),
          Cards(
            ImageUrl: 'images/pod2.jpg',
            Title: 'Fearless Females',
          ),
          Cards(
            ImageUrl: 'images/pod3.jpg',
            Title: 'The Gaana Show',
          ),
          Cards(
            ImageUrl: 'images/pod4.jpg',
            Title: 'The Lineup',
          ),
          Cards(
            ImageUrl: 'images/pod5.jpg',
            Title: 'Tim Ferriss Show',
          ),
          Cards(
            ImageUrl: 'images/pod6.jpg',
            Title: 'Confessions',
          ),
          Cards(
            ImageUrl: 'images/pod7.jpg',
            Title: 'The Corona Virus Daily Show',
          ),
        ],
      ),
    );
  }

}

class Cards extends StatelessWidget {
  final String ImageUrl;
  final String Title;

  const Cards({this.ImageUrl, this.Title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      width: 160.0,
      margin: EdgeInsets.only(right:2),


      child: Card(
        color: Colors.grey[900],
        child: InkWell(
          onTap: (){},
          child: Wrap(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(80),

                child:  Image.asset(ImageUrl,height:152,fit: BoxFit.fill),

              ),
              ListTile(
                title: Text(Title,style: TextStyle(color: Colors.grey,),overflow: TextOverflow.ellipsis,),

              ),

            ],


          ),
        ),


      ),


    );
  }
}

