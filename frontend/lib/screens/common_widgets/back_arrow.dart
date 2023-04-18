import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/image_constant.dart';



class BackArrow extends StatelessWidget {

  String navigateTo = "";

  BackArrow ({
    super.key, 
    this.navigateTo = "",
  });

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
      onTap: (){
        if(navigateTo == ""){
          Navigator.pop(context);
        } else {
          Navigator.pushNamed(context, navigateTo);
        }
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: SvgPicture.asset(ImageConstant.imgArrowLeft)
        ),
      )
    );
  }
}