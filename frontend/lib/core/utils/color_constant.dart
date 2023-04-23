import 'package:flutter/material.dart';

class ColorConstant {
  static Color primaryColor = fromHex("#C2E8F5");
  static Color secondaryColor = fromHex("#66689D");

  static Color textColor = fromHex("#000000");
  static Color backgroundColor = fromHex("#140E35");
  static Color menuActiveColor = fromHex("#E78439");
  static Color menuNotActiveColor = fromHex("#FAFEFF");

  static Color disabledColor = fromHex("#6B7C96");
  static Color pressedColor = fromHex("#6AD7FC");

  static Color backgroundBlackColor = fromHex("#130F12");

  /* TODO: Tutorial colors, delete them once screens are ready */

  // static const textColor = Color(0xFF1F2022);
  // static const primaryColor = Color(0xFF6358E1);

  static const textBlack = Color(0xFF1F2022);
  static const white = Color(0xFFFFFFFF);
  static const grey = Color(0xFFB6BDC6);
  static const loadingBlack = Color(0x80000000);

  static const textFieldBackground = Color(0xFFFBFCFF);
  static const textFieldBorder = Color(0xFFB9BBC5);

  static const errorColor = Color(0xFFF25252);

  static const homeBackgroundColor = Color.fromRGBO(252, 252, 252, 1);
  static const textGrey = Color(0xFF8F98A3);

  static const cardioColor = Color(0xFFFCB74F);
  static const armsColor = Color(0xFF5C9BA4);

  /* TODO: Generated colors, delete them once screens are ready */

  static Color gray90002 = fromHex('#140e35');

  static Color gray400 = fromHex('#bdbdbd');

  static Color blueGray500 = fromHex('#66689d');

  static Color gray900 = fromHex('#0f0b21');

  static Color gray90001 = fromHex('#130f12');

  static Color whiteA70090 = fromHex('#90ffffff');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color blueGray500Cc = fromHex('#cc66689d');

  static Color black900 = fromHex('#000000');

  static Color black90072 = fromHex('#72000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blue100 = fromHex('#c2e8f5');

  static Color deepOrange400 = fromHex('#e78439');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7009e = fromHex('#9effffff');

  static Color black900Bf = fromHex('#bf0b0b0b');

  // ====================

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
