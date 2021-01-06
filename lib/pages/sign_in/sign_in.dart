import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_news/common/values/values.dart';
import 'package:my_news/common/widgets/input.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget _headIcon() {
    return Container(
      margin: EdgeInsets.only(top: 84.w),
      width: 76.r,
      height: 76.r,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.primaryBackground,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 5.h),
            blurRadius: 10.w,
            color: AppColors.thirdElement.withOpacity(0.15),
          )
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/images/Logo.png',
          width: 36.w,
          height: 48.h,
        ),
      ),
    );
  }

  Widget _appName() {
    return Container(
      // width: 100.w,
      // height: 40.h,
      margin: EdgeInsets.only(top: 15.h),
      child: Column(
        children: [
          Text(
            'SECTOR',
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 24.ssp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'news',
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16.ssp,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _emailInput() {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Column(
        children: [
          inputTextEdit(
            controller: TextEditingController(text: ''),
            hintText: 'Email',
            marginTop: 49.h,
          ),
          inputTextEdit(
            controller: TextEditingController(text: ''),
            hintText: 'Password',
            isPassword: true,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _headIcon(),
            _appName(),
            _emailInput(),
          ],
        ),
      ),
    );
  }
}
