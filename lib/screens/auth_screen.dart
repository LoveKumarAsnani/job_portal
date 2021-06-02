import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  static String routeName = 'auth';

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: device.width,
            height: device.height,
            child: Image.asset(
              'assets/images/authbackground.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
                  child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 80,
                ),
                child: Text(
                  'All Jobs',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ),
              Column(mainAxisAlignment:MainAxisAlignment.end,children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Colors.blue,),margin:EdgeInsets.symmetric(horizontal: 50),padding:EdgeInsets.symmetric(vertical: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                    ),
                    Padding(padding:EdgeInsets.only(right: 20),child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],),
                ),
              SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    print('love');
                  },
                  child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(color: Colors.white)),margin:EdgeInsets.symmetric(horizontal: 50),padding:EdgeInsets.symmetric(vertical: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('I have an account',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                      ),
                      Padding(padding:EdgeInsets.only(right: 20),child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                    ],),
                  ),
                ),
              SizedBox(height: 15,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Color.fromRGBO(16, 138, 227, 1),),margin:EdgeInsets.symmetric(horizontal: 50),padding:EdgeInsets.symmetric(vertical: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Padding(padding:EdgeInsets.only(left: 20),child:  Image.asset('assets/images/facebook_icon.png')),
                    SizedBox(width: 12,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text('Connect Facebook',style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),
                  ],),
                ),
                SizedBox(height: 15,),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),color: Colors.red,),margin:EdgeInsets.symmetric(horizontal: 50),padding:EdgeInsets.symmetric(vertical: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Container(color:Colors.white,child:  Image.asset('assets/images/google_icon.png')),
                    SizedBox(width: 12,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text('Connect Google',style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),
                  ],),
                ),
                SizedBox(height: 15,),
                Container(child: Text('All jobs terms and condition and privacy policy',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),),
                SizedBox(height: 24,),
              ],),
            ],),
            ],
          )
    );
  }
}
