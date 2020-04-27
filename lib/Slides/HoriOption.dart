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
        color: Colors.grey[700],
        child: ListView(

          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Text(
                "All",
              style: TextStyle(fontSize: 22.0),

            ),
            Text(
                "Top Hits",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "New Songs",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "90s Hits",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "Old Songs",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "For You",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "Podcasts",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "Romance",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "Corona",
              style: TextStyle(fontSize: 22.0),
            ),
            Text(
                "Akshay Kumar",
              style: TextStyle(fontSize: 22.0),
            ),

          ],
        ),

      ),
    );
  }
}
