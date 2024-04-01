import 'dart:ui';
import 'MainMahdity.dart';
import 'Nature.dart';
import 'Electricity.dart';
import 'package:flutter/material.dart';
import 'package:mahdity/loginPage.dart';
import 'Street.dart';
import 'Water.dart';
class DeclarationPage extends StatefulWidget {
  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> with TickerProviderStateMixin {

  final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.transparent.withOpacity(0.5),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.only(left: 0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blueAccent,

      body:SingleChildScrollView(
        child: Column(
       children: [
         BackdropFilter(filter: ImageFilter.blur(

           sigmaX:2,
           sigmaY: 2,
         ),child: Container(alignment: Alignment.topCenter,
           padding: EdgeInsets.all( 20),

         ),

         ),




         Container( width:400,
           margin: EdgeInsets.only(top: 0),
           height:900,
           decoration:BoxDecoration(
             border: Border.all(color:Colors.white.withOpacity(0.1)),
             borderRadius: BorderRadius.circular(12),
             gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Colors.black.withOpacity(0.7),
                   Colors.black.withOpacity(0.5),
                 ]

             ),
           ),
           child: Column(


             children: [
               Padding(padding: EdgeInsets.only(top: 20,bottom: 0)),
               Center(
                 child: Container(
                   child: Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 10),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Colors.black.withOpacity(0.4)
                         ),padding: EdgeInsets.only(left: 10,right: 10)
                         ,child:Align(
                   child: RichText(
                       text: TextSpan(
                           children: [
                             TextSpan(
                               text: 'Welcome to ',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 16,
                               ),
                             ),
                             TextSpan(
                               text: 'Mahdity',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.blue,
                                 fontSize: 18,
                               ),
                             ),
                             TextSpan(
                               text: ' Click on the chosen service if you want to send a declaration.',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 16,
                               ),
                             ),
                           ])),),
                         height: 130,
                         width: 250,

                       ),Container(margin: EdgeInsets.only(left:30,bottom: 80),
                         decoration: BoxDecoration(
                           color: Colors.black.withOpacity(0.9),
                           borderRadius: BorderRadius.circular(15),
                         ),
                         height: 50,
                         width: 50,
                         child: ElevatedButton(onPressed: () {
                           Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => MainMahdity()));
                         },style: raisedButtonStyle2,

                         child: Icon(Icons.home,color: Colors.blue,size: 30,),),
                       )
                     ],
                   ),
                   decoration:BoxDecoration(
                   border: Border.all(color:Colors.white.withOpacity(0.1)),
                   borderRadius: BorderRadius.circular(15),
                   gradient: LinearGradient(
                     begin: Alignment.topLeft,
                     end: Alignment.bottomRight,
                     colors: [
                       Colors.black.withOpacity(0.3),
                       Colors.black.withOpacity(0.3),
                     ])),
                   height: 150,
                   width: 350,
                 ),
               ),
               Padding(padding: EdgeInsets.only(top: 30)),
               GestureDetector(

                 onTap:(
                   ){Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Nature()));


                 }

           , child: Container(
                 child: Row(
                   children: [

                     Container(

                       margin:EdgeInsets.only(top: 10,right:0 ,left: 10,bottom: 10),
                       child: Image.asset('assets/trees.png'),

                       height: 110,
                       width: 140,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             end: Alignment.bottomRight,
                             colors: [
                               Colors.greenAccent.shade700.withOpacity(0.9),
                               Colors.greenAccent.shade700.withOpacity(0.4),
                               Colors.black.withOpacity(0.5),
                             ]),
                         borderRadius: BorderRadius.circular(15)
                       ),
                     ),
                     Container(
                       height: 110,
                       width: 120,
                       decoration: BoxDecoration( color: Colors.black.withOpacity(0),
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(15),
                           bottomRight: Radius.circular(15),
                         ),),


                       child: Align(

                         alignment: Alignment(0,0),
                         child: Text('Nature',style: TextStyle(
                           color: Colors.white.withOpacity(0.8),
                           fontSize: 16,

                         ),),
                       ),
                     ),

                     Container(decoration: BoxDecoration(),
                       margin:EdgeInsets.only(left: 20),
                       child: Icon(Icons.arrow_forward_ios,size: 30,

                           color: Colors.black.withOpacity(0.8)),),
                   ],
                 ),
                 width:320 ,
                 height:130,
                   margin: EdgeInsets.only(top:10),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     gradient: LinearGradient(
                         begin: Alignment.topLeft,
                         end: Alignment.bottomRight,
                         colors: [
                           Colors.black.withOpacity(0.4),
                           Colors.black.withOpacity(0.4),
                           Colors.black.withOpacity(0.5),
                         ]
                     ),
                   ),),),

                  GestureDetector(
                    onTap:(
                       ){Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Electricity()));

                           },
               child: Container(
                 child: Row(
                   children: [

                     Container(

                       margin:EdgeInsets.only(top: 10,right:0 ,left: 10,bottom: 10),

                       child: Image.asset('assets/electricity.png'),

                       height: 110,
                       width: 140,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             end: Alignment.bottomRight,
                             colors: [
                               Colors.blue.withOpacity(0.9),
                               Colors.blueAccent.shade700.withOpacity(0.5),
                               Colors.black.withOpacity(0.5),
                             ]
                         ),
                         borderRadius: BorderRadius.circular(15)
                       ),
                     ),  Container(
                       height: 110,
                       width: 120,
                       decoration: BoxDecoration( color: Colors.black.withOpacity(0.0),
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                         ),),
                       padding: EdgeInsets.all(20),

                       child: Align(

                         alignment: Alignment(0.2,0),

                         child: Text('Electricity   Service',style: TextStyle(
                           color: Colors.white.withOpacity(0.8),
                           fontSize: 15,
                         ),),
                       ),
                     ),

                     Container(margin:EdgeInsets.only(left: 20),
                       child: Icon(Icons.arrow_forward_ios,size: 30,
                           color: Colors.black.withOpacity(0.8)),),
                   ],
                 ),
                 width:320 ,
                 height:130,
                 margin: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   gradient: LinearGradient(
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: [
                         Colors.black.withOpacity(0.4),
                         Colors.black.withOpacity(0.5),
                         Colors.black.withOpacity(0.5),
                       ]
                   ),
                 ),),),
      GestureDetector(
          onTap:(
              ){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Street()));

          },child:
               Container(
                 child: Row(
                   children: [

                     Container(

                       margin:EdgeInsets.only(top: 10,right:0 ,left: 10,bottom: 10),
                       child: Image.asset('assets/construction.png'),

                       height: 110,
                       width: 140,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                               colors: [
                                 Colors.red.withOpacity(0.9),
                                 Colors.red.shade900.withOpacity(0.8),
                                 Colors.black.withOpacity(0.5),
                               ]
                           ),
                         borderRadius: BorderRadius.circular(15)
                       ),
                     ),
                     Container(
                       height: 110,
                       width: 120,
                       decoration: BoxDecoration( color: Colors.black.withOpacity(0.0),
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                         ),),
                       padding: EdgeInsets.all(15),

                       child: Center(
                         child: Text('Street Construction Service',style: TextStyle(
                           color: Colors.white.withOpacity(0.8),
                           fontSize: 15,

                         ),),
                       ),
                     ),

                     Container(margin:EdgeInsets.only(left: 20),
                       child: Icon(Icons.arrow_forward_ios,size: 30,
                           color: Colors.black.withOpacity(0.8)),),
                   ],
                 ),

                 width:320 ,
                 height:130,
                 margin: EdgeInsets.all(0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   gradient: LinearGradient(
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: [
                         Colors.black.withOpacity(0.4),
                         Colors.black.withOpacity(0.5),
                         Colors.black.withOpacity(0.5),
                       ]
                   ),
                 ),
               ),),
      GestureDetector(
          onTap:(
              ){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Water()));

          },
               child:Container(
                 child: Row(
                   children: [
                     Container(

                       margin:EdgeInsets.only(top: 10,right:0 ,left: 10,bottom: 10),
                       child: Image.asset('assets/water.png'),

                       height: 110,
                       width: 140,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                               begin: Alignment.topLeft,
                               end: Alignment.bottomRight,
                               colors: [
                                 Colors.purple.withOpacity(0.9),
                                 Colors.purpleAccent.shade700.withOpacity(0.8),
                                 Colors.black.withOpacity(0.5),
                               ]
                           ),
                         borderRadius: BorderRadius.circular(15),
                       ),
                     ),
                     Container(
                       height: 110,
                       width: 120,
                      decoration: BoxDecoration( color: Colors.black.withOpacity(0),
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(50),
                           bottomRight: Radius.circular(50),
                         ),),
                       padding: EdgeInsets.all(20),

                           child: Center(

                         child: Text('water Overflow Service',style: TextStyle(
                           color: Colors.white.withOpacity(0.8),
                           fontSize: 16,

                         ),),
                       ),
                     ),

                     Container(margin:EdgeInsets.only(left: 20),
                         child: Icon(Icons.arrow_forward_ios,size: 30,
                         color: Colors.black.withOpacity(0.8)),),


                   ],
                 ),
                 width:320 ,
                 height:130,
                 margin: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   gradient: LinearGradient(
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: [
                         Colors.black.withOpacity(0.4),
                         Colors.black.withOpacity(0.5),
                         Colors.black.withOpacity(0.5),

                       ]
                   ),
                 ),),),
             ],

           ),

         ),


       ],

        ),

      )
    );
  }
  }

