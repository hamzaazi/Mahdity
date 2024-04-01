import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mahdity/MainMahdity.dart';
import 'loginPage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class inputface extends StatefulWidget{



  @override
  State<inputface> createState() => _inputfaceState();
}

class _inputfaceState extends State<inputface> {
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


  String Drop1='Gender';
  late DateTime _dateTime;
  bool me=true;
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.red.withOpacity(0.9),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final ButtonStyle raisedButtonStyle4 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.blue.withOpacity(0.5),
    minimumSize: Size(20,40),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final ButtonStyle raisedButtonStyle3 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.blue.withOpacity(0.9),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.only(left: 0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );

  final ButtonStyle raisedButtonStyle2 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.black.withOpacity(0.5),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.only(left: 0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  final LinearGradient _gradient=LinearGradient(colors: <Color> [
    Colors.grey.shade700,
    Colors.white,
    Colors.white,
    Colors.grey.shade700,



  ],
  );
  final LinearGradient _gradient1=LinearGradient(colors: <Color> [
    Colors.grey.shade700,
    Colors.white,
    Colors.white,
    Colors.grey.shade700,



  ],
  );
  @override
  Widget build(BuildContext context) {

    return
      ClipRRect(

        borderRadius: BorderRadius.circular(20),


        child:Container(

          width:400,
          height: 600,
          child: Stack(
            children: [

              BackdropFilter(filter: ImageFilter.blur(

                sigmaX:2,
                sigmaY: 2,
              ),child: Container(alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(vertical: 20),

              ),

              ),//email text field


              Container(
                decoration:BoxDecoration(
                  border: Border.all(color:Colors.white.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.4),
                      ]
                  ),
                ),


              ),
                  Center(
                    child: Container(margin: EdgeInsets.only(bottom: 470),
                      child: Stack(

                        children: <Widget>[
                          selectedImagePath != null
                              ? CircleAvatar(
                            radius: 50,
                            backgroundImage: FileImage(
                              File(selectedImagePath!),
                            ),
                          )
                              :CircleAvatar(backgroundColor: Colors.black.withOpacity(0.7),
                            radius: 50,
                            child: Icon(Icons.person,size: 90,color: Colors.white.withOpacity(0.5),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left:0),

                            child: ElevatedButton(
                              style: raisedButtonStyle4,
                              onPressed: () {
                                // Show the image picker bottom sheet
                                _showImagePickerBottomSheet();
                              },
                              child: Icon(Icons.add_a_photo,size: 15,),
                            ),)
                        ],
                      ),


                    ),
                  ),
              Container(height: 60 ,width: 200,
                  margin: EdgeInsets.only(top: 130,left:0),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                       

                        border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7),
                        contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

                    ),
                  )
              ),
              Container(height: 60 ,width: 200,
                  margin: EdgeInsets.only(top:130,left:200),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(


                        border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "prename",
                        hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7),
                        contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

                    ),
                  )
              )
              ,Container(height: 60 ,width: 400,
               margin: EdgeInsets.only(top: 190,left:0),
                    padding: EdgeInsets.only(right: 20, left: 20),
                      child: TextField(style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                prefixIcon: new Icon(Icons.phone,color: Colors.blue.withOpacity(0.7),),
                border:OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Mobile Number",
                hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                filled: true,
                fillColor: Colors.black.withOpacity(0.7),
                contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

            ),
          )
      ), Container(height: 60 ,width: 400,
                  margin: EdgeInsets.only(top: 250,left:0),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: new Icon(Icons.email,color: Colors.blue.withOpacity(0.7),),
                        border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7),
                        contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

                    ),
                  )
              )
              ,Container(

                  height: 60 ,width: 400,
                  margin: EdgeInsets.only(top: 310,left:0),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: new Icon(Icons.lock,color: Colors.blue.withOpacity(0.7),),
                        border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.7),
                        contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

                    ),
                  )
              )
              , Container(height: 50,
                width:50,
                margin: EdgeInsets.only(top: 20,left:330 ),
                child:Center(
                  child: ElevatedButton(
                    style:raisedButtonStyle2,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainMahdity()));
                    },
                    child:Icon(Icons.home,size: 30,color: Colors.blue.withOpacity(0.9),

                    ),
                  ),
                ),
              ),
              Container(
                height:50,
                  width: 360,
                
                margin: EdgeInsets.only(top: 370,left:24 ),
                decoration:BoxDecoration(color: Colors.black.withOpacity(0.6),
                  border: Border.all(color:Colors.white.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(12), ),
                  child: DropdownButton <String> (
                    value: Drop1,
                  dropdownColor: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                  icon: Icon(Icons.keyboard_arrow_down,size: 35,color: Colors.white,),

                  underline: Container(color: Colors.white,
                  ),
                  onChanged: (String ? newvalue){
                    setState(() {
                      Drop1 =newvalue!;
                    });
                  },
                  items:const [
                    DropdownMenuItem <String>(
                      value:'Gender',
                      child: Row(children: [
                        Icon(Icons.place,color: Colors.blue,),
                        Text('Adress',style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic))
                      ]
                        ,),
                    ),
                  DropdownMenuItem <String>(
                    value:'1',
                    child: Row(children: [
                      Icon(Icons.place,color: Colors.blue,),
                      Text('Rodha',style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic))
                    ]
                      ,),),

                    DropdownMenuItem <String>(
                        value:'2',
                      child: Row(children: [
                        Icon(Icons.place,color: Colors.blue,),
                        Text('Borj Arif',style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic))
                      ]
                        ,),),
                    DropdownMenuItem <String>(
                    value:'3',
                    child: Row(children: [
                      Icon(Icons.place,color: Colors.blue,),
                      Text('Hiboun',style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic))
                    ]
                      ,),),
                    DropdownMenuItem <String>(
                    value:'4',
                    child: Row(children: [
                      Icon(Icons.place,color: Colors.blue,),
                      Text('Zwila',style: TextStyle(color: Colors.white,fontSize: 19,fontStyle: FontStyle.italic))
                    ]
                      ,),)
                  ],

                ),
              ),Container(height:40,
                width:300,
                margin: EdgeInsets.only(top: 450,left:50,),
        child: ShaderMask(
          shaderCallback: (Rect rect){
            return _gradient.createShader(rect);
          },
                  child:ElevatedButton(
                      style:raisedButtonStyle,
                      onPressed: () {
                      },



                      child:  Text('CREATE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                            fontFamily:'Schyler',
                            fontSize: 16,))
                  ),
                ),),

              Container(height:40,
                width:300,
                margin: EdgeInsets.only(top: 500,left:50,),
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (Rect rect){
                      return _gradient1.createShader(rect);
                    },
                        child:ElevatedButton(
                      style:raisedButtonStyle3,
                      onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginPage()),
                      );
                      },
                          child: Row( mainAxisSize: MainAxisSize.min,
                            children: [
                            Icon  (Icons.arrow_back_ios,size: 20,color: Colors.white,),
                            Text('Return', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9),
                              fontFamily:'Schyler',
                              fontSize: 17,)),
                          ],

                          ),),
                  ),
                ),
                 ),
            ],
          ),

        ) ,

      );


  }
}