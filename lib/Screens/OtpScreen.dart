import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                "Verify Phone",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                "Code is sent to 8094508485",
                style: TextStyle(
                  color: Color(0xFF6A6C7B),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Pinput(
                showCursor: true,
                defaultPinTheme: PinTheme(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 147, 210, 243))),
                length: 6,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t receive the code? ",
                    style: TextStyle(
                      color: Color(0xFF6A6C7B),
                    ),
                  ),
                  Text(
                    " Request Again",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                child: Center(
                  child: Text(
                    "VERIFY AND CONTINUE",
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
