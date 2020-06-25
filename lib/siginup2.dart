import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2 createState() => _SignUp2();
}

class _SignUp2 extends State<SignUp2> {
  bool passwordVisible;
  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape)
      ScreenUtil.init(width: 2436, height: 1125, allowFontScaling: true);
    else
      ScreenUtil.init(width: 1125, height: 2436, allowFontScaling: true);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFA461FF),
                Color(0xFF644CFD),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(48.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                /** Back Button and Container */
                Container(
                  height: 200.h,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          padding: EdgeInsets.all(0),
                          width: 108.h,
                          height: 108.h,
                          child: GestureDetector(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 34 * 3.h,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 108.w,
                          height: 108.h,
                          child: Image.asset('assets/moon.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    'Before You Begin',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 90.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 51.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),SizedBox(
                  height: 45.h,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 51.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /**Email */

                SizedBox(
                  height: 90.h,
                ),
                /**Sign In Button */
                Container(
                    height: 180.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.w),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFF5E87),
                          Color(0xFFFFA18F),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                  child: FlatButton(
                    child: Text(
                      'Accept',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 90.h,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You must accept our',
                        style: TextStyle(
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(0.7)),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          " Terms & Privacy Policy",
                          style: TextStyle(
                              fontSize: 36.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
