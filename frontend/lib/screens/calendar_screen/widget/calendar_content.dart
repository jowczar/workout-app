import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/color_constant.dart';
import '../../common_widgets/back_arrow.dart';
import '../../common_widgets/loader.dart';
import '../../common_widgets/lp_background.dart';
import '../bloc/calendar_bloc.dart';

class CalendarContent extends StatelessWidget {
  const CalendarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: ColorConstant.white,
      child: Stack(
        children: [
          LpBackground.getBackground(context),
          _createMainData(context),
          BlocBuilder<CalendarBloc, CalendarState>(
            buildWhen: (_, currState) =>
                currState is LoadingState ||
                currState is ErrorState,
            builder: (context, state) {
              // if (state is LoadingState) {
              //   return _createLoading();
              // } else if (state is ErrorState || state is NextTabBarPageState) {
              //   return SizedBox();
              // }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }

  Widget _createMainData(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: <Widget>[
            Positioned(
              top: 10,
              left: 10,
              child: BackArrow(),
            ),
          ]
        )
      )
    );
  }

  Widget _createLoading() {
    return Loader();
  }
}
