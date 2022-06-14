import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListSection extends StatelessWidget {
  List image = [
    "assets/london.jpg",
    "assets/delhi.jpg",
    "assets/germany.jpg",
    "assets/usa.jpg",
  ];
  List captial = [
    "London \npopulation:12mil",
    "delhi \npopulation:1.4bil",
    "Birlin \npopulation:2mil",
    "washingtondc \npopulation:3mil"
  ];
  List country = ["britain", "india", "Germany", "America"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyListView'),
      ),
      body: ListView.builder(
          itemCount: image.length,
          itemBuilder: (context, index) {
            return Card(
              child:
            Row(children: [
              Container(
                width: 100,height: 100,
                child: Image.asset(image[index]),
              ),
              
              Padding(padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
children: [Text(country[index],style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),)
,SizedBox(height: 10,),
Container(
  width: 200,
  child: Text(captial[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
)],
              ),)
            ],)
            );
          }),
    );
  }
}
