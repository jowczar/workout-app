import 'package:intl/intl.dart';

class DateFormatter {
  static String MMyyyy(DateTime time) {
    return DateFormat('MM-yyyy').format(time);
  }

  static String ddMMyyyy(DateTime time) {
    return DateFormat('dd-MM-yyyy').format(time);
  }

  static DateTime getRelativeDate(
      DateTime time, int bufforedMonthsNumber, int additionalMonths) {
    return DateTime(
        time.year, time.month - (bufforedMonthsNumber) + additionalMonths);
  }

  static DateTime getDate(String date) {
    return DateFormat('dd-MM-yyyy').parse(date);
  }
}
