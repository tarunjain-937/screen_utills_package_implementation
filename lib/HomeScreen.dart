/// if we assiging horizontal size we use (.w) notation, eg:- 24.w
/// similarly with vertical size we use (.h) notation, eg:- 24.h
/// for defining the text font size we use (.sp) notation, eg:- 24.sp
/// for defining circular radius use (.r) notation, eg:- 10.r

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52.h),
              Text("Sign in to Masterminds",style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold)),
              SizedBox(height: 4.h),
              Row(
                children: [
                  Text("Already have an account?",style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
                  TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),),
                ],
              ),
              SizedBox(height: 24.h),
              textField(hintText: "Full name"),
              SizedBox(height: 16.h),
              textField(hintText: "Email "),
              SizedBox(height: 16.h),
              textField(hintText: "Password"),
              SizedBox(height: 16.h),
              textField(hintText: "Confirm password"),
              SizedBox(height: 16.h),
             SizedBox(
               width: double.infinity,
               child: ElevatedButton(onPressed: (){},
                 child: Text("Create Account",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700),),
                 style: ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(Colors.deepPurpleAccent),
                   elevation: MaterialStatePropertyAll(5),
                   padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 14.h))
                 ),),
             ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 2,height: 2,indent: 5.w,endIndent: 5.w,)),
                  Text("or Sign in with",style: TextStyle(fontSize: 14.sp)),
                  Expanded(child: Divider(thickness: 2,height: 2,indent: 5.w,endIndent: 5.w,)),
                ],
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.google,size: 20.sp,color: Colors.black,),
                      SizedBox(width: 10.w),
                      Text("Google",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.black),),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      side: MaterialStatePropertyAll(BorderSide(width: 2,color: Colors.black)),
                      elevation: MaterialStatePropertyAll(5),
                      padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 14.h))
                  ),),
              ),
              SizedBox(height: 16.h,),
              SizedBox(height: 4.h),
              Wrap(
                children: [
                  Text("By signing up to Masterminds you agree to our",style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
                  TextButton(onPressed: (){}, child: Text("terms and conditions",style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),),
                ],
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }

  /// =================== Methods ==========================
  Widget textField({required hintText}){
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),borderSide: BorderSide(color: Colors.black,width: 2)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r),borderSide: BorderSide(color: Colors.black,width: 2)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),
        fillColor: Color.fromRGBO(250, 243, 240,1),
      ),
    );
  }
}
