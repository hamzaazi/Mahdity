import 'package:flutter/material.dart';
import 'dart:ui';
import 'MyDrawer.dart';

class InputMahdity extends StatefulWidget {
  @override
  _InputMahdityState createState() => _InputMahdityState();
}

class _InputMahdityState extends State<InputMahdity> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child:Column(
          children: [
            Row(
              children: [

                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left:320,top:40),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(color: Colors.white.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 50,
                    width: 50,
                    child: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.list,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Container(color: Colors.white,

              margin: EdgeInsets.only(top:40),
              height:300 ,
              width:double.infinity

            ),

            Container(color: Colors.white,
                margin: EdgeInsets.only(top:40),
                height: 100,
                width:double.infinity

            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
