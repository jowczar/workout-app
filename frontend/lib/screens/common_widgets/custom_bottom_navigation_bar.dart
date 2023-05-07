import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/core/app_export.dart';
import 'package:workout_app/screens/create_workout_plan_screen/page/create_workout_plan_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(189, 173, 173, 0),
        ),
        child: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconBottomBar(
                            icon: "assets/images/statistics.png",
                            selected: selectedIndex == 0,
                            onPressed: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            }),
                        IconBottomBar(
                            icon: "assets/images/calendar.png",
                            selected: selectedIndex == 1,
                            onPressed: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            }),
                        IconBottomBar(
                            icon: "assets/images/menu.png",
                            selected: selectedIndex == 2,
                            onPressed: () {
                              setState(() {
                                selectedIndex = 2;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CreateWorkoutPlanPage()),
                                );
                              });
                            }),
                        IconBottomBar(
                            icon: "assets/images/reward.png",
                            selected: selectedIndex == 3,
                            onPressed: () {
                              setState(() {
                                selectedIndex = 3;
                              });
                            })
                      ],
                    )))));
  }
}

class IconBottomBar extends StatelessWidget {
  final String icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {required this.icon,
      required this.selected,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: ImageIcon(AssetImage(icon),
                size: 150,
                color: selected
                    ? ColorConstant.menuActiveColor
                    : ColorConstant.menuNotActiveColor)),
      ],
    );
  }
}
