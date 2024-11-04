import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:liveasy/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? selectedValue;
  final List<String> items = ['English', 'Gujarati', 'Hindi'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Image.asset("assets/images/image.png"),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Please select your Language",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text("You can change the language "),
            Text("at any time."),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 216.w,
              height: 48.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2.w, color: Color(0xFFD6D6D6)),
                  borderRadius: BorderRadius.circular(4.sp),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'English',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF03030A),
                          ),
                        ),
                      ),
                    ],
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Get.to(() => LoginScreen());
              },
              child: Container(
                child: Center(
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 46, 59, 98),
                ),
                height: 48.h,
                width: 216.w,
              ),
            ),
            Expanded(child: SizedBox()),
            Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/v.png",
                  fit: BoxFit.fill,
                ))
          ],
        ),
      ),
    ));
  }
}
