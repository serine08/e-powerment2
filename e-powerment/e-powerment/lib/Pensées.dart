import 'package:e_empowerment/globals.dart';

final String tablePensee = 'Pensee';

class PenseeFields {
  static final List<String> values = [
    /// Add all fields
    id,  RatingP,  date
  ];

  static final String id = '_id';

  static final String RatingP = 'RatingP';

  static final String date = 'date';
}





class Pensee {
  final int? id;
  final int? place;

  final int RatingP;

  final DateTime date;

  const Pensee({
    this.id,
    this.place,

    required this.RatingP,
    required this.date


  });
  Pensee copy({
    int? id,
    int? place,

    int? Rating,

    DateTime? date,
  }) =>
      Pensee(
        id: id ?? this.id,
        place: place ?? this.place,

        RatingP: Rating ?? this.RatingP,

        date: date ?? this.date,
      );

  static Pensee fromJson(Map<String, Object?> json) => Pensee(
    id: json[PenseeFields.id] as int?,
    RatingP: json[PenseeFields.RatingP] as int,

    date: DateTime.parse(json[PenseeFields.date] as String),
  );

  Map<String, Object?> toJson() => {
    PenseeFields.id: id,

    PenseeFields.RatingP: RatingP,
    PenseeFields.date: date.toIso8601String(),
  };
}
