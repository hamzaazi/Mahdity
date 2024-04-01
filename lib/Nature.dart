import 'dart:io';
import 'dart:ui';
import 'package:mahdity/DeclarationPage.dart';
import 'DeclarationPage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'Notification.dart';

class Nature extends StatefulWidget {
  @override
  State<Nature> createState() => _NatureState();
}

class _NatureState extends State<Nature> with TickerProviderStateMixin {
  TextEditingController _subject =new TextEditingController();
  TextEditingController _Description =new TextEditingController();



  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.green.shade900.withOpacity(0.9),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
  final LinearGradient _gradient=LinearGradient(colors: <Color> [
      Colors.grey.shade700,
      Colors.white,
      Colors.white,
      Colors.grey.shade700,

  ],
  );
  final picker = ImagePicker();
  String? selectedImagePath;

  Future<void> _showImagePickerBottomSheet() async {
    showModalBottomSheet(
      backgroundColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              tileColor: Colors.black.withOpacity(0.2),
              leading: Icon(Icons.photo_library,color: Colors.blue,),
              title: Text('Gallery',style: TextStyle(color: Colors.blue),),
              onTap: () async {
                Navigator.pop(context);
                final pickedFile =
                await picker.pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  setState(() {
                    selectedImagePath = pickedFile.path;
                  });
                }
              },
            ),
            ListTile( tileColor: Colors.black.withOpacity(0.2),
              leading: Icon(Icons.camera_alt,color: Colors.blue,),
              title: Text('Camera',style: TextStyle(color: Colors.blue),),
              onTap: () async {
                Navigator.pop(context);
                final pickedFile =
                await picker.pickImage(source: ImageSource.camera);
                if (pickedFile != null) {
                  setState(() {
                    selectedImagePath = pickedFile.path;
                  });
                }
              },
            ),
          ],
        );
      },
    );
  }
  final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.black.withOpacity(0.5),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.only(left: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,

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
                                          text: ' Nature Service',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.greenAccent .shade700,
                                            fontSize: 18,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Fill the declaration sector with your problem',
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
                                    MaterialPageRoute(builder: (context) => DeclarationPage()));
                              },style: raisedButtonStyle2,

                                child: Icon(Icons.arrow_back_ios,color: Colors.greenAccent.shade700,size: 30,),),
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
                    Container (

                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      height: 410,
                      width: 350,
                      padding: EdgeInsets.only(right: 10, left: 10,top:10),
                      child: Column
                        (
                        children: [
                          Center(
                            child: TextField(
                              controller: _subject,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(


                                  border:OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: "Subject",
                                  hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                                  filled: true,
                                  fillColor: Colors.black.withOpacity(0.6),
                                  contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

                              ),

                            ),

                          ),
                          Padding(padding:  EdgeInsets.only(right: 20, left: 20,top:10),),
                          Center(
                            child: TextField(
                              controller: _Description,
                              maxLines:9,
                              style:
                              TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border:OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    )
                                  ),
                                  hintText: "Description",
                                  hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                                  filled: true,
                                  fillColor: Colors.black.withOpacity(0.6),
                                  contentPadding: EdgeInsets.only(left: 30,top: 15,bottom: 0.5,)

                              ),

                            ),


                          ), Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)
                              )
                            ),
                            child:Row(children: [
                              Container(
                                margin: EdgeInsets.only(top: 10,right: 0),
                                height: 90, // Set the desired height
                                width: 90, // Set the desired width
                                child: Stack(
                                  children: <Widget>[
                                    selectedImagePath != null
                                        ? ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.file(
                                        File(selectedImagePath!),
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    )
                                        : Container(),
                                    GestureDetector(
                                      onTap: () {
                                        // Show the image picker bottom sheet
                                        _showImagePickerBottomSheet();
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 0),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),

                                        ),
                                        child: selectedImagePath == null
                                            ? Icon(Icons.add_photo_alternate_rounded, size: 60,color: Colors.white.withOpacity(0.6),)
                                            : Container(), // Placeholder for the selected image
                                      ),
                                    ),
                                  ],
                                ),
                              ),Container(margin: EdgeInsets.only(bottom: 0,right: 0),
                                color: Colors.transparent,
                              width: 50,
                              height: 40,
                              child: Icon(Icons.pin_drop,size: 50,color: Colors.white.withOpacity(0.6),),),
                              Container(margin: EdgeInsets.only(top: 30,left:40),
                                color: Colors.transparent,
                              height: 35,
                              width: 140,
                                child: ShaderMask(
                                  shaderCallback: (Rect rect){
                                    return _gradient.createShader(rect);
                                  },
                                  child:ElevatedButton(
                                      style:raisedButtonStyle,
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => NotificationPage (subject: _subject.text, description: _Description.text, imagee: selectedImagePath != null ? Image.file(File(selectedImagePath!)) : Image.asset('default_image_path') ,),
                                        ));
                                      },



                                      child:  Text('Send',
                                          style: TextStyle(

                                            color: Colors.white.withOpacity(0.7),
                                            fontFamily:'Schyler',
                                            fontSize: 20,))
                                  ),
                                ),)

                            ],

                            ),
                            ),






                        ],
                      ),

                    ),Padding (padding: EdgeInsets.only(top: 20)),
                    Center(
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                        margin:EdgeInsets.only(top: 10,right:0 ,left: 10,bottom: 10),
                        child: Image.asset('assets/trees.png'),

                        height: 100,
                        width: 100 ,
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
                      ),Container(margin: EdgeInsets.only(left: 20),
                              width: 210,height: 85,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(10),
                            ),padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                            child: Text('Accept localisation constrainte if you want to add your location',style: TextStyle(color: Colors.white,fontSize: 16),)),
                          ],
                        ),
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)
                        ),

                        
                      ),

                    ),





                  ],

                ),

              ),


            ],

          ),

        )
    );
  }
}

