import 'dart:convert';

import 'package:collection/collection.dart';

class CalendarDay {
  String? date;
  bool? isWorkout;
  bool? isDone;

  CalendarDay({this.date, this.isWorkout, this.isDone});

  @override
  String toString() {
    return 'CalendarDay(date: $date, isWorkout: $isWorkout, isDone: $isDone)';
  }

  factory CalendarDay.fromMap(Map<String, dynamic> data) => CalendarDay(
        date: data['date'] as String?,
        isWorkout: data['isWorkout'] as bool?,
        isDone: data['isDone'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'date': date,
        'isWorkout': isWorkout,
        'isDone': isDone,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CalendarDay].
  factory CalendarDay.fromJson(String data) {
    return CalendarDay.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CalendarDay] to a JSON string.
  String toJson() => json.encode(toMap());

  CalendarDay copyWith({
    String? date,
    bool? isWorkout,
    bool? isDone,
  }) {
    return CalendarDay(
      date: date ?? this.date,
      isWorkout: isWorkout ?? this.isWorkout,
      isDone: isDone ?? this.isDone,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CalendarDay) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => date.hashCode ^ isWorkout.hashCode ^ isDone.hashCode;
}