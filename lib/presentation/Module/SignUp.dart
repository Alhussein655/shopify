import 'package:flutter/material.dart';
import 'package:shopify/presentation/Widgets/TextField.dart';
import 'package:shopify/presentation/Widgets/button.dart';
import 'package:sizer/sizer.dart';
class SignUp extends StatelessWidget {
  TextEditingController? controller;
   SignUp({Key? key,this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children:[
            SizedBox(height: 3.h,),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios),
                )),
            SizedBox(height: 5.h,),
            Center(
            child: Container(
              height: 62.h,
              width: 91.7.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Sign Up',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      )),
                  TextFiled(name: 'Name',secure: false,type: TextInputType.name,controller:controller ,hint: 'Enter your name',),
                  TextFiled(controller:controller,type: TextInputType.emailAddress,hint: 'Enter mail',secure: false,name: 'Email',),
                  TextFiled(controller:controller,type: TextInputType.emailAddress,hint: 'Enter Pass',secure: true,name: 'Password',),
              SizedBox(height: 2.h,)   ,
              Btn(name: 'SIGN UP',)
                ],
              ),
            ),
          ),]
        ),
      ),
    );
  }
}
