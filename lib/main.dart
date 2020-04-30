import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gaanaapp/Slides/Genre.dart';
import 'package:gaanaapp/Slides/HoriOption.dart';
import 'package:gaanaapp/Slides/Pod.dart';
import 'package:gaanaapp/Slides/Toppicks.dart';
import 'package:gaanaapp/Slides/Trending.dart';
import 'package:gaanaapp/Slides/Trending2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Front(),

  ));
}

class Front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget car = new Container(
      margin: EdgeInsets.only(top:25),
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Carousel(
          autoplay: true,
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/imag5.jpg'),
            AssetImage('images/imag7.jpg'),
            AssetImage('images/images.jpg'),
            AssetImage('images/img3.jpg'),
            AssetImage('images/img4.jpg'),
          ],
          
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1300),
          dotColor: Colors.black,
          dotSize: 0.0,
          indicatorBgPadding: 0.0,

        ),
      )
        ,
    );
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: ListView(
          scrollDirection: Axis.vertical,
            children: <Widget>[
               search(),
              Horilist(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,8.0),

                child: Container(

                  height: 735,
                  color: Colors.grey[900],
                  child: ListView(
                    scrollDirection: Axis.vertical,

                    children: <Widget>[

                      Container(
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Carousel(
                            boxFit: BoxFit.fill,
                            autoplay: true,
                            images: [
                              AssetImage("images/gaana.jpeg"),
                              AssetImage("images/best.jpg"),
                              AssetImage("images/despa.jpg"),
                              AssetImage("images/img6.jpg"),


                            ],
                            animationDuration: Duration(milliseconds: 2000),
                            animationCurve: Curves.fastOutSlowIn,
                            dotSize: 0.0,
                            indicatorBgPadding: 0.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:40,left: 5),
                        child: Text("Top Chart",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.white),),
                      )
                      ,
                      car,


                      Padding(
                        padding: const EdgeInsets.only(top:40.0,left:5.0),
                        child: Text("Moods & Collections",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w800,color: Colors.white),),
                      )
                      ,
                      Padding(
                        padding: const EdgeInsets.only(top:25.0),
                        child: Genre(),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:50.0,left:5.0),
                        child: Text("Top Picks",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.white),
                        ),
                      ),
                      Toppicks(),

                      Padding(
                        padding: const EdgeInsets.only(top:50.0,left:5.0),
                        child: Text("Trending Songs",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.white),
                        ),
                      ),
                      Trending(),
                      Trending2(),
                      Padding(
                        padding: const EdgeInsets.only(top:50.0,left:5.0),
                        child: Text("Shows and Podcasts",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w800,color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:60.0),
                        child: Pod(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text("This App is a dummy practice project and is not for any type of commercial use. It doesnt intends to copy the gaana app content"),
                      )





                    ],

                  ),
                ),
              ),

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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          )
        ),
        cursorColor: Colors.grey,
      ),
    );
  }
}
