import 'package:workout_app/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:workout_app/screens/common_widgets/custom_drawer.dart';
import 'package:workout_app/screens/common_widgets/mini_logo.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.backgroundBlackColor,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                child: MiniLogo(),
              )),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    iconSize: 44,
                  )))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
