import 'package:calc/controller/home_controller.dart';
import 'package:calc/widgets/display_widget.dart';
import 'package:calc/widgets/keyboard_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:calc/core/ad_helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _homeController = HomeController();
  late BannerAd _ad;
  bool _isLoaded = false;

  Widget checkForAd() {
    if (_isLoaded == true) {
      return Container(
        child: AdWidget(
          ad: _ad,
        ),
        width: _ad.size.width.toDouble(),
        alignment: Alignment.center,
      );
    } else {
      return CircularProgressIndicator();
    }
  }

  void _addValue(String value) {
    if (_homeController.isClearInOut) {
      _homeController.clearInOut();
      _homeController.isClearInOut = false;
      setState(() {});
    }

    _homeController.addValue(value);
    _homeController.lastButtonClick = value;
    setState(() {});
  }

  void _clear() {
    _homeController.clear();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _ad = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(onAdLoaded: (_) {
        setState(() {
          _isLoaded = true;
        });
      }, onAdFailedToLoad: (_, error) {
        print("Ad Failed to Load with Error: $error");
      }),
    );

    _ad.load();
  }

  @override
  void dispose() {
    _ad.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: DisplayWidget(
                expression: _homeController.expression,
                inOut: _homeController.inOut,
              ),
            ),
            KeyboardWidget(
              onPressed0: () {
                _addValue("0");
              },
              onPressed1: () {
                _addValue("1");
              },
              onPressed2: () {
                _addValue("2");
              },
              onPressed3: () {
                _addValue("3");
              },
              onPressed4: () {
                _addValue("4");
              },
              onPressed5: () {
                _addValue("5");
              },
              onPressed6: () {
                _addValue("6");
              },
              onPressed7: () {
                _addValue("7");
              },
              onPressed8: () {
                _addValue("8");
              },
              onPressed9: () {
                _addValue("9");
              },
              onPressedClear: () {
                _clear();
              },
              onPressedParentheses: () {
                _addValue("()");
              },
              onPressedPercent: () {
                _addValue("%");
              },
              onPressedDivision: () {
                _addValue("/");
              },
              onPressedMutiplication: () {
                _addValue("X");
              },
              onPressedSubtraction: () {
                _addValue("-");
              },
              onPressedAddition: () {
                _addValue("+");
              },
              onPressedEqual: () {
                _addValue("=");
              },
              onPressedComma: () {
                _addValue(",");
              },
            ),
            checkForAd(),
          ],
        ),
      ),
    );
  }
}
