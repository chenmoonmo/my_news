import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:my_news/common/utils/utils.dart';
import 'package:my_news/common/values/values.dart';

class WelecomePage extends StatefulWidget {
  WelecomePage({Key key}) : super(key: key);

  @override
  _WelecomePageState createState() => _WelecomePageState();
}

class _WelecomePageState extends State<WelecomePage> {
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Text(
        'Features',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24.ssp,
          fontFamily: 'Montserrat',
          color: AppColors.primaryText,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildPageHeadDetail() {
    return Container(
      margin: EdgeInsets.only(
        top: 14.h,
      ),
      width: 242.w,
      height: 70.h,
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.ssp,
          fontWeight: FontWeight.normal,
          fontFamily: 'Avenir',
          color: AppColors.primaryText,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: 295.w,
      height: 80.h,
      margin: EdgeInsets.only(
        top: marginTop.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80.r,
            height: 80.r,
            child: Image.asset(
              'assets/images/$imageName.png',
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 20.w,
            ),
            width: 195.w,
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 16.ssp,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureDetail() {
    return Column(
      children: [
        _buildFeatureItem(
          'future1',
          'Compelling photography and typography provide a beautiful reading',
          86,
        ),
        _buildFeatureItem(
          'future2',
          'Sector news never shares your personal data with advertisers or publishers',
          40,
        ),
        _buildFeatureItem(
          'future3',
          'You can get Premium to unlock hundreds of publications',
          40,
        ),
      ],
    );
  }

  Widget _buildStartButton() {
    return Container(
      width: 295.w,
      height: 44.h,
      margin: EdgeInsets.only(
        bottom: 20.ssp,
      ),
      child: FlatButton(
        onPressed: () {},
        color: AppColors.primaryElement,
        child: Text(
          'Get started',
          style: TextStyle(
            fontSize: 18.ssp,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: AppColors.primaryElementText,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 计算设计稿高度
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(),
            _buildPageHeadDetail(),
            _buildFeatureDetail(),
            Spacer(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
