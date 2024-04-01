import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  final String subject;
  final String description;
  final Image imagee;

  const NotificationPage({required this.subject, required this.description, required this.imagee});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Notification Page',style: TextStyle(color: Colors.white),),
      ),
      body: Container( height:double.infinity,// Wrapping Scaffold with Container
        color: Colors.blue,
        padding: EdgeInsets.all(10),// Background color for the body
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.7),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                         padding: EdgeInsets.only(left: 10,right: 5),
                    child: Text(
                      'Sub: ${widget.subject}',
                      style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 20), // Add some spacing between widgets
                  Expanded(
                    child: Text(
                      'Desc: ${widget.description}',
                      style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 20), // Add some spacing between widgets
                  Container(padding: EdgeInsets.only(right: 10),
                    height: 80,
                    width: 80,
                    child: widget.imagee,
                  ),
                ],
              ),
            ),
          ),
        ),

      ),

    );
  }
}
