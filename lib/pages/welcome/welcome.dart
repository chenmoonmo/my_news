import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_news/common/utils/utils.dart';
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
          fontSize: duSetFontSize(24),
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
        top: duSetHeight(14),
      ),
      width: duSetWidth(242),
      height: duSetHeight(70),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: duSetFontSize(16),
          fontWeight: FontWeight.normal,
          fontFamily: 'Avenir',
          color: AppColors.primaryText,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(
        top: duSetHeight(marginTop),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              'assets/images/$imageName.png',
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: duSetWidth(20),
            ),
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: duSetFontSize(16),
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
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(
        bottom: duSetHeight(20),
      ),
      child: FlatButton(
        onPressed: () {},
        color: AppColors.primaryElement,
        child: Text(
          'Get started',
          style: TextStyle(
            fontSize: duSetFontSize(18),
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
    return ScreenUtilInit(
      designSize: Size(375, 812.0),
      allowFontScaling: true,
      child: Scaffold(
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
      ),
    );
  }
}
