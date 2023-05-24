import 'dart:convert';

import 'package:collection/collection.dart';

class Challenge {
  final String? id;
  final String? name;
  final String? points;

  const Challenge({this.id, this.name, this.points});

  @override
  String toString() => 'Challenge(id: $id, name: $name, points: $points)';

  factory Challenge.fromMap(Map<String, dynamic> data) => Challenge(
        id: data['id'] as String?,
        name: data['name'] as String?,
        points: data['points'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'points': points,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Challenge].
  factory Challenge.fromJson(String data) {
    return Challenge.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Challenge] to a JSON string.
  String toJson() => json.encode(toMap());

  Challenge copyWith({
    String? id,
    String? name,
    String? points,
  }) {
    return Challenge(
      id: id ?? this.id,
      name: name ?? this.name,
      points: points ?? this.points,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Challenge) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ points.hashCode;
}
