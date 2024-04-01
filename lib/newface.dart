import 'package:flutter/material.dart';
import 'inputface.dart';
class newface extends StatefulWidget{
  State<newface> createState() => _newfaceState();
}

class _newfaceState extends State<newface> with TickerProviderStateMixin{
  @override
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {}); // Trigger a rebuild when the animation value changes
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse(); // Reverse the animation when it reaches the end
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward(); // Restart the animation when it reaches the beginning
        }
      });

    _controller.forward(); // Start the animation
  }



  Widget build(BuildContext context) {


    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(_animation.value, 0.0),
            end: Alignment(_animation.value - 1.0, 0.1),
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade500,
              Colors.blue.shade900,
            ],
          ),
        ),
          child:Center(



          child:inputface(),
        ),)



    );
  }}
