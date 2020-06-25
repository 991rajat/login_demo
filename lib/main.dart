import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signin_signup/signup.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ));

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible;
  @override
  void initState() {
    // TODO: implement initState
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
            padding: EdgeInsets.all(48.w),
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 300.h,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        top: 30.h,
                        child: Container(
                          width: 210.h,
                          height: 210.h,
                          child: Image.asset(
                            'assets/path.png',
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 108.w,
                          height: 108.h,
                          child: Image.asset(
                            'assets/moon.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                Container(
                  child: Text(
                    'Welcome',
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
                /**Email */
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
                /**Password */
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
                  height: 45.h,
                ),
                Container(
                  child: Text(
                    ' Or Sign In Using',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 51.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /**Other Ways to Sign In */
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 180.h,
                        width: 180.w,
                        child: GestureDetector(
                          child: Image.asset('assets/facebook.png'),
                        ),
                      ),
                      Container(
                        height: 180.h,
                        width: 180.w,
                        child: GestureDetector(
                          child: Image.asset('assets/google.png'),
                        ),
                      ),
                    ],
                  ),
                ),
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
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 45.h,
                ),
                /**Sign Up Button */
                Container(
                  height: 180.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.w),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  child: FlatButton(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
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
                        'By Signing up you agree to our',
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
