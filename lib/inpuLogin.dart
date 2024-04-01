import 'dart:ui';
import 'package:flutter/material.dart';
import 'newface.dart';
class inpuLogin extends StatefulWidget{



  @override
  State<inpuLogin> createState() => _inpuLoginState();
}

class _inpuLoginState extends State<inpuLogin> {

  bool me=true;
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.red.withOpacity(0.9),
    minimumSize: Size(200, 49.8),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final ButtonStyle raisedButtonStyle1 = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.blue.shade600.withOpacity(0.9),
    minimumSize: Size(500, 49.8),
    padding: EdgeInsets.symmetric(horizontal: 16),
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
  final LinearGradient _gradient1=LinearGradient(colors: <Color> [
    Colors.grey.shade700,
    Colors.white,
    Colors.white,
    Colors.grey.shade700,
  ],
  );
  final LinearGradient _gradient2=LinearGradient(colors: <Color> [
    Colors.grey.shade800,
    Colors.white,
    Colors.white,
    Colors.grey.shade800,
  ],
  );
  @override
  Widget build(BuildContext context) {

    return
      ClipRRect(

        borderRadius: BorderRadius.circular(20),


        child:Container(

          width:400,
          height: 500,
          child: Stack(
            children: [

              BackdropFilter(filter: ImageFilter.blur(

                sigmaX:2,
                sigmaY: 2,
              ),child: Container(alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(vertical: 20),

              ),

              ),


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
                  child: Container(margin: EdgeInsets.only(bottom: 290,right:30),
                    child: Image.asset('assets/ss.png',fit: BoxFit.cover,),

                    // child: Icon(Icons.person,size: 100,color: Colors.black.withOpacity(0.6),

                  )),
              Container(height: 60 ,width: 400,
                  margin: EdgeInsets.only(top: 180),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: new Icon(Icons.email,color: Colors.blue.withOpacity(0.9),),

                        border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter your email address",
                        hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.6),
                        contentPadding: EdgeInsets.only(left: 30,top: 0.5,bottom: 0.5,)

                    ),
                  )
              ),Container(height: 60 ,width: 400,
                  margin: EdgeInsets.only(top: 240),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: TextField(style: TextStyle(color: Colors.white),

                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: new Icon(Icons.lock,color: Colors.blue.withOpacity(0.9),),
                        suffixIcon: new Icon(Icons.visibility_off,color: Colors.blue.withOpacity(0.9),),

                        border:OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter your Password",
                        hintStyle: TextStyle(color: Colors.grey.shade700,fontSize: 18,fontStyle: FontStyle.italic,height: 0.5,),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.6),
                        contentPadding: EdgeInsets.only(left: 20,top: 0.5,bottom: 0.5,)

                    ),

                  )

              ),Container(
                  width: 400,
                  height: 25,
                  margin: EdgeInsets.only(top: 280),
                  child:CheckboxListTile (
                      controlAffinity:ListTileControlAffinity.leading,
                      title:Text('remember me',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 18,fontStyle:FontStyle.italic),
                        textAlign:TextAlign.left,),
                      value:me,
                      checkColor: Colors.blue.withOpacity(0.6),
                      activeColor: Colors.black.withOpacity(0.6),
                      onChanged:(val)
                      {
                      } )
              ), Container(height:40,
                width:300,
                margin: EdgeInsets.only(top: 350,left: 50,),


                child: ShaderMask(
                  shaderCallback: (Rect rect){
                    return _gradient1.createShader(rect);
                  },
                  child:ElevatedButton(
                      style:raisedButtonStyle,
                      onPressed: () {

                      },

                      child:  Text('LOGIN',
                          style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                            fontFamily:'Schyler',
                            fontSize: 16,
                          ))
                  ),
                ),


              ),Container(height:40,
                width:300,
                margin: EdgeInsets.only(top: 400,left:50,),
                child: ShaderMask(
                  shaderCallback: (Rect rect){
                    return _gradient2.createShader(rect);
                  },
                  child:ElevatedButton(

                      style:raisedButtonStyle1,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => newface()),
                        );
                      },



                      child: const Icon(
                        Icons.person_add,size: 28,),
                  ),
                ),


              ),Container(height: 50,
                width:50,
                margin: EdgeInsets.only(top: 20,left:330 ),
                child:Center(
                  child: ElevatedButton(
                    style:raisedButtonStyle2,
                    onPressed: () {},

                    child:Icon(Icons.home,size: 30,color: Colors.blue.withOpacity(0.9),

                    ),
                  ),
                ),

              ),


            ],
          ),

        ) ,

      );


  }
}