import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/utils/color_constant.dart';
import '../../common_widgets/back_arrow.dart';
import '../../common_widgets/loader.dart';
import '../../common_widgets/lp_background.dart';
import '../bloc/calendar_bloc.dart';

class CalendarContent extends StatefulWidget {
  const CalendarContent({super.key});
  
  @override
  State<StatefulWidget> createState() => _CalendarContent();
}

class _CalendarContent extends State<CalendarContent>{
  
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

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
          child: TableCalendar(
            locale: "en_US",
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true
            ),
            availableGestures: AvailableGestures.all,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            selectedDayPredicate: (day) => isSameDay(day, today),
            onDaySelected: _onDaySelected,
            focusedDay: today,
          ),
      )
    );
  }

  Widget _createLoading() {
    return Loader();
  }
}
