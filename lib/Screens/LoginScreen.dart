import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:liveasy/Screens/OtpScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.close),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Column(
              children: [
                Text(
                  "Please enter your mobile number",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "You’ll receive a 6 digit code",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xFF6A6C7B),
                  ),
                ),
                Text(
                  "to verify next.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xFF6A6C7B),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => OtpScreen());
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 46, 59, 98),
                    ),
                    height: 56.h,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            child: Image.asset(
              width: double.infinity,
              "assets/images/g.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    ));
  }
}
