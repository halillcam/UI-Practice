import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 77.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 96),
              child: Image.asset("assets/images/instagram_logo.png", width: 182.w, height: 49.h),
            ),
            SizedBox(height: 35.h),
            _TextContainer(hintext: "Email"),
            SizedBox(height: 10.h),
            _TextContainer(hintext: "Password"),
            SizedBox(height: 19.h),
            Padding(
              padding: EdgeInsets.only(left: 253.w, right: 16.w),
              child: Text(
                'Forgot Password ? ',
                style: TextStyle(fontSize: 12.sp, color: Colors.blue),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              alignment: Alignment.center,
              width: 343,
              height: 44.h,
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20.sp, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _TextContainer extends StatelessWidget {
  _TextContainer({required this.hintext});

  String hintext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 43.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
          hintText: hintext,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
