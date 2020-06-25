import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_signup/siginup2.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          // padding: EdgeInsets.all(ScreenUtil().setWidth(16 * 3)),
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
            padding: EdgeInsets.all(48.w),
            physics: BouncingScrollPhysics(),
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
                          width: 108.w,
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
              
                /**Hey There */
                Container(
                  child: Text(
                    'Hey There!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 90.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /** Please tell us about yourself */
                Container(
                  child: Text(
                    'Please Provide Details',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 51.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /** Name Form Field */
                Container(
                  height: 210.h,
                  padding: EdgeInsets.only(left: 36.w, right: 36.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 51.sp),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: 'Name',
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 51.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /** Email Form Field */
                Container(
                  height: 210.h,
                  padding: EdgeInsets.only(left: 36.w, right: 36.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white, fontSize: 51.sp),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: 'Email',
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 51.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /**Password Field */
                Container(
                  height: 210.h,
                  padding: EdgeInsets.only(left: 36.w, right: 36.w),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white, fontSize: 51.sp),
                    cursorColor: Colors.white,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelText: 'Password',
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 51.sp),
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 670.h,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: MaterialButton(
                      shape: CircleBorder(),
                      
                      padding: EdgeInsets.all(0),
                      child: Container(
                        width: 174.w,
                        height: 174.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFF5E87),
                                Color(0xFFFFA18F),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 60.w,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp2()));
                      },
                    ),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
