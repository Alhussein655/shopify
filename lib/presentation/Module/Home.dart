import 'package:flutter/material.dart';
import 'package:shopify/presentation/Widgets/card_item.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Search=======================
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 6.5.h,
              width: 70.w,
              decoration: BoxDecoration(
               color: Colors.grey[300], 
               borderRadius: BorderRadius.circular(30.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search,size: 25.sp,),
                ],
              ),
            ),
          ),
          //=======================================//
          //Text Categories=====================
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 28),
            child: Text('Categories',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          //===================================//
          //ICons========================
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 19),
            child: Container(
              height: 18.h,
              width: 30.w,
              color: Colors.white,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 16.h,
                    width: 23.w,
                    color: Colors.white,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('data',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },),
            ),
          ),
          //========================================//
          //Text see all==========================
          Padding(
            padding: const EdgeInsets.only(top: 12,left: 8,right: 8),
            child: Container(
              height: 6.h,
              width: 92.w,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Selling',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                    Text('See all',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ],
              ),
            ),
          ),
          //Product Best selling====================
          Container(
            height: 43.h,
            width: 100.w,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card_item(),
                Card_item()
              ],
            ),
          ),
        ],      
      ),
    );
  }
}