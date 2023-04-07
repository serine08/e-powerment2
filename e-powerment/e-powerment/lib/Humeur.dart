import 'package:e_empowerment/globals.dart';

final String tableHumeur = 'Humeur';

class HumeurFields {
  static final List<String> values = [
    /// Add all fields
    id,  Rating,  date , place
  ];

  static final String id = '_id';

  static final String Rating = 'Rating';

  static final String date = 'date';

  static final String place = 'place';

}





class Humeur {

  final int? place;

  final int? id;

  final int Rating;

  final DateTime date;

  const Humeur({
    this.id,
    this.place,
    required this.Rating,
    required this.date


  });
  Humeur copy({
    int? id,
    int? place,

    int? Rating,

    DateTime? date,
  }) =>
      Humeur(
        id: id ?? this.id,
        place: place ?? this.place,

        Rating: Rating ?? this.Rating,

        date: date ?? this.date,
      );

  static Humeur fromJson(Map<String, Object?> json) => Humeur(
    id: json[HumeurFields.id] as int?,
    Rating: json[HumeurFields.Rating] as int,
    date: DateTime.parse(json[HumeurFields.date] as String),
  );

  Map<String, Object?> toJson() => {
    HumeurFields.id: id,

    HumeurFields.Rating: Rating,

    HumeurFields.date: date.toIso8601String(),
  };
}
