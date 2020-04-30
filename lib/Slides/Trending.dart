import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  var trendList=[

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.only(top:25),
      color: Colors.black54,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Cards(imgUrl: 'images/song12.jpg',imgdis: 'Despacito',),
          Cards(imgUrl: 'images/song10.jpg',imgdis: 'Teri Meri Kahani',),
          Cards(imgUrl: 'images/song4.jpg',imgdis: 'Teri Kami',),
          Cards(imgUrl: 'images/song9.jpg',imgdis: 'Saiyan',),
          Cards(imgUrl: 'images/song11.jpg',imgdis: 'Teri Deewani',),

        ],
      ),

    );
  }
}

class Cards extends StatelessWidget {
  final String imgUrl;
  final String imgdis;

  const Cards({this.imgUrl, this.imgdis});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Card(
        color: Colors.grey[900],

        child: InkWell(
          onTap: (){},
          child: Wrap(
            children: <Widget>[

              Image.asset(imgUrl,height:120,width: 140,fit: BoxFit.fill,),
              ListTile(
                title: Text(imgdis,style: TextStyle(color: Colors.grey,fontSize: 15),overflow: TextOverflow.ellipsis,),

                trailing: IconButton( icon:Icon(Icons.file_download,color: Colors.grey[400],),onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}


