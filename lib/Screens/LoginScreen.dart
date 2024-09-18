import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: Column(  
            children: [
              Text(
                "Please enter your mobile number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "You’ll receive a 6 digit code",
                style: TextStyle(
                  color: Color(0xFF6A6C7B),
                ),
              ),
              Text(
                "to verify next.",
                style: TextStyle(
                  color: Color(0xFF6A6C7B),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  hintStyle: TextStyle(
                      fontSize: 17,
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
                height: 20.h,
              ),
              Container(
                child: Center(
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 46, 59, 98),
                ),
                height: 60.h,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
