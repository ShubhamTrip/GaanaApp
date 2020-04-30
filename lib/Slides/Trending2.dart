import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Trending2 extends StatefulWidget {
  @override
  _Trending2State createState() => _Trending2State();
}

class _Trending2State extends State<Trending2> {
  var trendList=[

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,

      color: Colors.black54,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Cards(imgUrl: 'images/song2.jpg',imgdis: 'Teri Aakad',),
          Cards(imgUrl: 'images/song3.jpg',imgdis: 'Zindagi',),
          Cards(imgUrl: 'images/song5.jpg',imgdis: 'Loca',),
          Cards(imgUrl: 'images/song6.jpg',imgdis: 'Boggu Gorilo',),
          Cards(imgUrl: 'images/song7.jpg',imgdis: 'Sufna',),

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

