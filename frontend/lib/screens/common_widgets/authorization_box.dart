import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';


class AuthorizationBox extends StatelessWidget {

  Widget? child;

  AuthorizationBox ({
    super.key, 
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox (
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: null
        )
      );
  }
}