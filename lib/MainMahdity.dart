import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'InputMahdity.dart';
class MainMahdity extends StatefulWidget{
  @override
  State<MainMahdity> createState() => _MainMahdityState();
}

class  _MainMahdityState extends State<MainMahdity> with TickerProviderStateMixin{
  @override



  Widget build(BuildContext context) {


    return Scaffold(backgroundColor: Colors.white,
      extendBody: true,


      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        items: [
        CurvedNavigationBarItem(
          child: Icon(Icons.emoji_events_rounded,color: Colors.red,size: 35,)  )      ,
          CurvedNavigationBarItem(
          child: Icon(Icons.home,color: Colors.blue,size: 35,)  ,
          ),CurvedNavigationBarItem(
            child: Icon(Icons.notifications_rounded,color: Colors.white,size: 35,)  ,
          )
      ],
        height: 60,
      ),

      body:

      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/'),
            fit: BoxFit.cover,

          ),
        ),

        child: Center(
          child: InputMahdity(),
        ),

      ),

    );
  }}