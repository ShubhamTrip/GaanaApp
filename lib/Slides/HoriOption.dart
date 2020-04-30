import 'package:flutter/material.dart';

class Horilist extends StatefulWidget {
  @override
  _HorilistState createState() => _HorilistState();
}

class _HorilistState extends State<Horilist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,8.0),
      child: Container(
        height: 50.0,
        color: Colors.grey[850],
        child: ListView(

          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "All",
                style: TextStyle(fontSize: 22.0,),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "Top Hits",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "New Songs",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "90s Hits",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "Old Songs",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "For You",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "Podcasts",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "Romance",
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "Corona",
                style: TextStyle(fontSize: 22.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,10.0,20.0,0.0),
              child: Text(
                  "Akshay Kumar",
                style: TextStyle(fontSize: 22.0),
              ),
            ),

          ],
        ),

      ),
    );
  }
}
