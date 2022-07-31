
import 'package:aplikasi_pemesanan_alat_kesehatan/page/Login.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/detailPage.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/homePage.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/keranjangPage.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/splashScreen.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/suksesPesan.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/welcomePage.dart';
import 'package:provider/provider.dart';
import 'package:aplikasi_pemesanan_alat_kesehatan/page/base.dart';

import 'genosLib/bloc/baseBloc.dart';


class GenProvider {
  static var providers = [
    ChangeNotifierProvider<BaseBloc>.value(value: BaseBloc()),

  ];

  static routes(context) {
    return {
//           '/': (context) {
//        return Base();
//      },

      '/': (context) {
        return SplashScreen();
      },


      'welcome': (context) {
        return WelcomePage();
      },

      'home': (context) {
        return Base();
      },

      'detail': (context) {
        return DetailPage();
      },

      'keranjang': (context) {
        return KeranjangPage();
      },

      'suksespesan': (context) {
        return SuksesPesanPage();
      },

      'login': (context) {
        return LoginPage();
      },

    };
  }
}
