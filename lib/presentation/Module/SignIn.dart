import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopify/presentation/Widgets/TextField.dart';
import 'package:shopify/presentation/Widgets/button.dart';
import 'package:sizer/sizer.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController? controller;
   SignInScreen({Key? key,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 80.h,
            width: 90.w,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Welcome,',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                          SizedBox(height: 2.h,),
                          Text('Sign in to Continue,',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ),

                      TextButton(onPressed: (){}, child: Text('Sign Up',style: TextStyle(color: Colors.greenAccent[700],fontSize: 15.sp,fontWeight: FontWeight.w400)))
                  ],),
                  TextFiled(controller:controller,type: TextInputType.emailAddress,hint: 'Enter mail',secure: false,name: 'Email',),
                  TextFiled(controller:controller,type: TextInputType.emailAddress,hint: 'Enter Pass',secure: true,name: 'Password',),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(onPressed: (){}, child:
                      Text('forget password ?',style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w300)))),
                Btn(name: 'SIGN IN')
                 , Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Center(child:
                   Text('-OR-',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15.sp),)),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Container(height: 6.h,width: 90.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Icon(Icons.facebook,color: Colors.blueAccent,size: 4.5.h,),
                        Text('Sign In with Facebook',style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w300)),

                        ],),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    Container(height: 6.h,width: 90.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.mail,color: Colors.redAccent,size: 4.5.h,),
                          Text('Sign In with g_mail',style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.w300)),

                        ],),
                    ),

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
