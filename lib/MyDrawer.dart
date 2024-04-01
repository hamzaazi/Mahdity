import 'package:flutter/material.dart';
import 'dart:ui';
import 'loginPage.dart';
import 'DeclarationPage.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          return Drawer(
            backgroundColor: Colors.black.withOpacity(0.7),
                child: ListView(
                   padding: EdgeInsets.zero,
                     children: [

                          DrawerHeader(

                        decoration: BoxDecoration(
                          color: Colors.transparent,


                                  ),
                            child:Stack (
                              children: [

                                Container(

                                  color: Colors.blue,
                                  height:200,
                                  width: 310,
                                  child: Image.asset('assets/prodf.jpg',fit: BoxFit.cover,) ,

                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top : 30),
                                  child: CircleAvatar(backgroundColor: Colors.black.withOpacity(0.7),
                                    radius: 50,
                                    child: Icon(
                                      Icons.person,size: 60,color: Colors.white,),
                                    ),
                                  ),

                              ],
                            ),


                                ),

                               Container(

                                 color: Colors.transparent,
                                 height: 50,
                                 child: Text('Welcome To Mahdity',textAlign:TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white),),
                               ),
                               Container(

                                   decoration:BoxDecoration(
                                     border: Border.all(color:Colors.white.withOpacity(0.1)),

                                     gradient: LinearGradient(
                                         begin: Alignment.topLeft,
                                         end: Alignment.bottomRight,
                                         colors: [
                                           Colors.blue.withOpacity(0.7),
                                           Colors.black.withOpacity(0.4),
                                         ]
                                     ),
                                   ),

                               child:ListTile(
                                 leading: Icon(Icons.person_outline_sharp,size: 28,color: Colors.white,),
                              title: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 20),),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => loginPage()),
                                      );
                     // Handle drawer item tap
                            // Close the drawer
                              },)
                               ),Padding(padding: EdgeInsets.only(top:30),),
                       Container(


                           decoration:BoxDecoration(
                             border: Border.all(color:Colors.white.withOpacity(0.1)),

                             gradient: LinearGradient(
                                 begin: Alignment.topLeft,
                                 end: Alignment.bottomRight,
                                 colors: [
                                   Colors.blue.withOpacity(0.7),
                                   Colors.black.withOpacity(0.4),
                                 ]
                             ),
                           ),

                           child:ListTile(
                             leading: Icon(Icons.edit_note,size:30,color: Colors.white,),
                             title: Text('Declaration',style: TextStyle(color: Colors.white,fontSize: 20),),
                             onTap: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => DeclarationPage()),
                               );
                             },)
                       ),
                       Padding(padding: EdgeInsets.only(top:30),),
                       Container(
                           decoration:BoxDecoration(
                             border: Border.all(color:Colors.white.withOpacity(0.1)),

                             gradient: LinearGradient(
                                 begin: Alignment.topLeft,
                                 end: Alignment.bottomRight,
                                 colors: [
                                   Colors.blue.withOpacity(0.7),
                                   Colors.black.withOpacity(0.4),
                                 ]
                             ),
                           ),



                           child:ListTile(
                             leading: Icon(Icons.photo,size:30,color: Colors.white,),
                             title: Text('About Mahdia',style: TextStyle(color: Colors.white,fontSize: 20),),
                             onTap: () {
                               // Handle drawer item tap
                               Navigator.pop(context); // Close the drawer
                             },)
                       ),
                       Padding(padding: EdgeInsets.only(top:30),),
                       Container(

                           decoration:BoxDecoration(
                             border: Border.all(color:Colors.white.withOpacity(0.1)),

                             gradient: LinearGradient(
                                 begin: Alignment.topLeft,
                                 end: Alignment.bottomRight,
                                 colors: [
                                   Colors.red.withOpacity(0.7),
                                   Colors.black.withOpacity(0.4),
                                 ]
                             ),
                           ),

                           child:ListTile(
                             leading: Icon(Icons.logout,size:30,color: Colors.white,),
                             title: Text('Log Out',style: TextStyle(color: Colors.white,fontSize: 20),),
                             onTap: () {
                               // Handle drawer item tap
                               Navigator.pop(context); // Close the drawer
                             },)
                       ),
                            // Add more ListTile items as needed
                             ],
                           ),
                        );
                          }
                             }