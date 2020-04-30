import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toppicks extends StatefulWidget {
  @override
  _ToppicksState createState() => _ToppicksState();
}

class _ToppicksState extends State<Toppicks> {

  var topList=[ {

  } ];

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(top:20),
       height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            Cards(Cardimage: 'images/song10.jpg',
            Title: 'Teri Meri Kahani'),
          Cards(Cardimage: 'images/song2.jpg',
            Title: 'Teri Akad',),
          Cards(Cardimage: 'images/song3.jpg',
            Title: 'Zindagi',),
          Cards(Cardimage: 'images/song4.jpg',
            Title: 'Teri Kami',),
          Cards(Cardimage: 'images/song5.jpg',
            Title: 'Loca',),
          Cards(Cardimage: 'images/song7.jpg',
            Title: 'Qubool',),
          Cards(Cardimage: 'images/song8.jpg',
            Title: 'Teri Dewani',),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String Cardimage;
  final String Title;

  const Cards({ this.Cardimage, this.Title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      color: Colors.black26,
      child:Card(
        color: Colors.grey[900],
         child: InkWell(
           onTap: (){},
           child:Wrap(
           children: <Widget>[
             Image.asset(Cardimage,height: 140.0,width: 160.0,fit:BoxFit.fill,),
             ListTile(
               title: Text(Title,style: TextStyle(color: Colors.grey,),overflow: TextOverflow.ellipsis,),
               trailing: IconButton( icon:Icon(Icons.file_download,color: Colors.grey[400],),onPressed: () {}),
             ),
           ],
         ),
         ),

        ),

      );
  }
}
