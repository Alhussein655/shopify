import 'package:flutter/material.dart';
import 'package:shopify/presentation/Module/Home.dart';
import 'package:shopify/presentation/Module/HomeS.dart';
import 'package:shopify/presentation/Module/SignIn.dart';
import 'package:shopify/presentation/Module/SignUp.dart';
import 'package:shopify/presentation/Module/verification.dart';
import 'package:sizer/sizer.dart';
void main(){
  runApp(shopify());
}
class shopify extends StatelessWidget {
  const shopify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) =>  MaterialApp(
        home:MyHomePage()
      ),
    );
  }
}
