import 'dart:async';
import 'dart:developer';

import 'package:aplikasi_pemesanan_alat_kesehatan/genosLib/component/button/genButton.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/genosLib/component/textfiled/TextField.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../genosLib/database/genPreferrence.dart';
import '../genosLib/genColor.dart';
import '../genosLib/genText.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  var opacity = 0.0;
  String buildNumber = "";

  var ip = "192.169.43.145:8000";

  @override
  void initState() {
    super.initState();

  }


  @override
  dispose() {
    super.dispose();
  }


  // cekLogin() async {
  //
  //   PackageInfo packageInfo = await PackageInfo.fromPlatform();
  //
  //   String appName = packageInfo.appName;
  //   String packageName = packageInfo.packageName;
  //   // buildNumber = packageInfo.version;
  //   buildNumber = packageInfo.buildNumber;
  //
  //   // var log = await getPrefferenceToken();
  //
  //   var _duration = Duration(milliseconds: 2000);
  //   return Timer(_duration,  (){ log == null
  //       ? Navigator.pushReplacementNamed(context, "welcome")
  //       : Navigator.pushReplacementNamed(context, "welcome");});
  //
  //
  // }

  // startSplashScreen() async {
  //   cekLogin();
  //
  //   var token = await getPrefferenceToken();
  //   if (token == null) {
  //     var duration = const Duration(milliseconds: 2000);
  //     return Timer(duration, () {
  //       Navigator.pushReplacementNamed(context, "login");
  //     });
  //   } else {
  //     var duration = const Duration(milliseconds: 2000);
  //     return Timer(duration, () {
  //       // Navigator.pushReplacementNamed(
  //       //     context, "welcome");
  //       Navigator.pushReplacementNamed(context, "home");
  //     });
  //   }
  // }

  // startAnim(){
  //   Timer(Duration(milliseconds: 100),  (){ setState(() {
  //     opacity = 1.0;
  //   });});
  // }

  bool loaded = false;
  @override
  Widget build(BuildContext context) {



    // if(!loaded){
    //   startAnim();
    //   startSplashScreen();
    //   loaded = true;
    // }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextLoginField(
                  label: "Setting IP",
                  onChanged: (val){
                    ip = val;
                  },
                ),
                SizedBox(height: 20,),
                GenButton(text: "Simpan", ontap: () async {
                  var ip2 = "http://"+ip;
                  await setPrefferenceIP(ip2);
                  var log = await getPrefferenceToken();


                  if(log == null){
                    Navigator.pushNamed(context, "welcome");
                  }else{
                    Navigator.pushNamed(context, "home");
                  }

                },
                ),
                // GenText("Versi "+buildNumber, style: TextStyle(color: Colors.black45),),
                SizedBox(height: 20,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
